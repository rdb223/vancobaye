import numpy as np
import scipy.stats as stats
from scipy.optimize import minimize
import json  # For loading different models from JSON file
from flask import Flask, request, jsonify

# Load models from a JSON file in the repository
try:
    with open('models.json', 'r') as file:
        models = json.load(file)
except FileNotFoundError:
    print("Error: models.json file not found. Ensure it is in the correct directory.")
    models = {}

# Flask app initialization
app = Flask(__name__)

# Function to get a model by name
def get_model(model_name):
    return models.get(model_name, None)

# Prior Information (for Bayesian calculation)
def prior(theta, model):
    CL, V = theta
    # Using pre-trained prior models for CL and V from the loaded model
    cl_prior = stats.norm(loc=model['parameters']['CL_base'], scale=0.5).logpdf(CL)  # Assuming a standard deviation of 0.5 for simplicity
    v_prior = stats.norm(loc=model['parameters']['V'], scale=5.0).logpdf(V)  # Assuming a standard deviation of 5.0 for simplicity
    return cl_prior + v_prior

# Likelihood Function (Given Observed Data)
def likelihood(theta, dose_times, concentrations):
    CL, V = theta
    predicted_conc = predict_concentration(dose_times, CL, V)
    # Assuming normal residual variability
    return np.sum(stats.norm.logpdf(concentrations, predicted_conc, 1.0))

# Predict Concentration for Vancomycin
# One compartment model assuming IV bolus doses
def predict_concentration(dose_times, CL, V):
    k = CL / V
    concentrations = []
    for dose_time in dose_times:
        dose, time = dose_time
        concentration = (dose / V) * np.exp(-k * time)
        concentrations.append(concentration)
    return np.array(concentrations)

# Posterior Function (combining prior and likelihood)
def posterior(theta, dose_times, concentrations, model):
    return -(prior(theta, model) + likelihood(theta, dose_times, concentrations))

# Flask route to perform Bayesian dosing calculation
@app.route('/calculate_dose', methods=['POST'])
def calculate_dose():
    try:
        # Get JSON data from the request
        data = request.get_json()
        model_name = data.get('model_name', 'Tong_2021')
        dose_times = data['dose_times']  # [(dose, time), ...]
        observed_concentrations = data['observed_concentrations']  # [concentration, ...]

        # Load the model to use for Bayesian calculation
        model = get_model(model_name)
        if model is None:
            return jsonify({"error": f"Model '{model_name}' not found in models.json."}), 400

        # Initial Guess for CL and V (using population-based formula)
        initial_guess = [
            model['parameters']['CL_base'],  # Initial guess for clearance (CL)
            model['parameters']['V']  # Initial guess for volume of distribution (V)
        ]

        # Optimization to Find Posterior Mode
        result = minimize(posterior, initial_guess, args=(dose_times, observed_concentrations, model), method='L-BFGS-B', bounds=[(0.1, 10), (10, 200)])

        # Extract Individualized Parameters (CL and V)
        if result.success:
            estimated_CL, estimated_V = result.x
            # Suggested Dose Calculation (Target Trough 15-20 mg/L)
            target_concentration = data.get('target_concentration', 15.0)
            interval = data.get('interval', 12.0)

            def suggest_dose(CL, V, target_concentration=15.0, interval=12.0):
                dose = (target_concentration * V) * (1 - np.exp(-CL / V * interval))
                return dose

            dose = suggest_dose(estimated_CL, estimated_V, target_concentration, interval)

            return jsonify({
                "estimated_CL": estimated_CL,
                "estimated_V": estimated_V,
                "suggested_dose": dose
            })
        else:
            return jsonify({"error": "Optimization failed. Try a different initial guess."}), 500

    except Exception as e:
        return jsonify({"error": str(e)}), 500

# Run Flask app
if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)
