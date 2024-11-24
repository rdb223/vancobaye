import streamlit as st
import subprocess
import tempfile
import os
import pandas as pd
import numpy as np
from pkpdposterior import PKPDposterior

def run_pkpdsim_r_script(weight, age, creatinine_clearance):
    """
    This function calls an R script to run the vancomycin simulation.
    The R script uses PKPDsim to calculate the vancomycin dose based on user inputs.
    """
    # Create a temporary R script to execute PKPDsim code
    r_script_content = f"""
library(PKPDsim)

# Set patient-specific parameters
dose_weight <- {weight}
age <- {age}
creatinine_clearance <- {creatinine_clearance}

# Vancomycin PK model
parameters <- list(CL = 3.5 * (creatinine_clearance / 100), V = 0.7 * dose_weight) # Example parameter calculation

# One-compartment model for vancomycin
model <- new_ode_model("pk_1cmt_iv")

# Define dosing regimen: 1000 mg every 12 hours
dosing_regimen <- new_regimen(amt = 1000, interval = 12, n = 5)

# Run simulation
result <- sim(ode = model, parameters = parameters, regimen = dosing_regimen)

# Extract the last concentration
dose_conc <- tail(result$y[, 2], 1)

# Print the output
cat("Vancomycin concentration: ", round(dose_conc, 2), " mg/L\n")
    """
    # Write the R script to a temporary file
    with tempfile.NamedTemporaryFile(delete=False, suffix=".R") as temp_script:
        temp_script.write(r_script_content.encode('utf-8'))
        temp_script_name = temp_script.name

    try:
        # Execute the R script using subprocess
        result = subprocess.run(["Rscript", temp_script_name], capture_output=True, text=True)
        if result.returncode == 0:
            return result.stdout
        else:
            return f"Error: {result.stderr}"
    finally:
        # Remove the temporary R script
        os.remove(temp_script_name)

def run_bayesian_inference(weight, age, creatinine_clearance):
    """
    This function uses the PKPDposterior package to run Bayesian inference
    for more precise dosing based on the patient's specific parameters.
    """
    # Example prior data for Bayesian modeling
    prior_data = {
        "weight": weight,
        "age": age,
        "creatinine_clearance": creatinine_clearance,
        "observed_concentration": np.nan  # Placeholder for real patient data
    }
    
    # Run Bayesian inference using PKPDposterior
    posterior_model = PKPDposterior(prior_data)
    posterior_estimate = posterior_model.estimate_posterior()
    
    # Return the results of the Bayesian inference
    return posterior_estimate

# Streamlit interface
def main():
    st.title("Vancomycin Dosing Calculator")

    # Get user input for patient details
    weight = st.number_input("Enter patient weight (kg):", min_value=30, max_value=200, value=70, step=1)
    age = st.number_input("Enter patient age (years):", min_value=18, max_value=100, value=30, step=1)
    creatinine_clearance = st.number_input("Enter creatinine clearance (mL/min):", min_value=10, max_value=200, value=100, step=5)

    if st.button("Calculate Vancomycin Dose (Traditional Method)"):
        # Run the R script to simulate dosing
        output = run_pkpdsim_r_script(weight, age, creatinine_clearance)
        st.text(output)

    if st.button("Calculate Vancomycin Dose (Bayesian Method)"):
        # Run Bayesian inference for more precise dosing
        bayesian_output = run_bayesian_inference(weight, age, creatinine_clearance)
        st.text(f"Posterior Estimate for Vancomycin Dosing: {bayesian_output}")

if __name__ == "__main__":
    main()
