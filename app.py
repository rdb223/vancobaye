import numpy as np
import scipy.stats as stats
from scipy.optimize import minimize
import pickle  # For loading prior models
import json  # For loading different prior models from .txt files

# Function to Load Prior Models from .txt Files
def load_prior_model_from_txt(file_path):
    with open(file_path, 'r') as f:
        data = json.load(f)
    return stats.norm(loc=data['mean'], scale=data['std'])

# Load Prior Models (assuming stored as .txt files in JSON format)
prior_model_cl = load_prior_model_from_txt('prior_model_cl.txt')
prior_model_v = load_prior_model_from_txt('prior_model_v.txt')

# Prior Information (for Bayesian calculation)
def prior(theta):
    CL, V = theta
    # Using pre-trained prior models for CL and V
    cl_prior = prior_model_cl.logpdf(CL)
    v_prior = prior_model_v.logpdf(V)
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
def posterior(theta, dose_times, concentrations):
    return -(prior(theta) + likelihood(theta, dose_times, concentrations))

# Sample Data (Patient Specific)
patient_weight = 85.0  # kg
serum_creatinine = 1.2  # mg/dL
dose_times = [
    (1000, 1.0),  # (dose in mg, time in hours)
    (1000, 5.0),
]
observed_concentrations = [25.0, 15.0]  # Observed drug concentrations (mg/L)

# Use Machine Learning Model to Predict Initial Guess for CL and V (Optional, Uncomment when ML model is available)
# from sklearn.ensemble import RandomForestRegressor  # For ML model
# import joblib  # For saving/loading ML models
# ml_model = joblib.load('ml_model.pkl')  # Assume a pre-trained RandomForestRegressor

# if 'ml_model' in locals():
#     input_features = np.array([[patient_weight, serum_creatinine]])
#     initial_guess_ml = ml_model.predict(input_features)[0]
# else:
#     initial_guess_ml = [None, None]

# Initial Guess for CL and V (using ML model if available or population-based formula)
initial_guess = [
    initial_guess_ml[0] if 'initial_guess_ml' in locals() and initial_guess_ml[0] is not None else POPULATION_CL * (patient_weight / WT_STD) * (CREAT_STD / serum_creatinine),
    initial_guess_ml[1] if 'initial_guess_ml' in locals() and initial_guess_ml[1] is not None else POPULATION_V * (patient_weight / WT_STD)
]

# Optimization to Find Posterior Mode
result = minimize(posterior, initial_guess, args=(dose_times, observed_concentrations), method='L-BFGS-B', bounds=[(0.1, 10), (10, 200)])

# Extract Individualized Parameters (CL and V)
if result.success:
    estimated_CL, estimated_V = result.x
    print(f"Estimated Clearance (CL): {estimated_CL:.2f} L/h")
    print(f"Estimated Volume of Distribution (V): {estimated_V:.2f} L")
else:
    print("Optimization failed. Try a different initial guess.")

# Suggested Dose Calculation (Target Trough 15-20 mg/L)
def suggest_dose(CL, V, target_concentration=15.0, interval=12.0):
    dose = (target_concentration * V) * (1 - np.exp(-CL / V * interval))
    return dose

dose = suggest_dose(estimated_CL, estimated_V)
print(f"Suggested Dose: {dose:.2f} mg per {interval:.2f} hours")
