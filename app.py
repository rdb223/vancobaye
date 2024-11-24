import numpy as np
import pandas as pd
import streamlit as st
import matplotlib.pyplot as plt
from scipy.integrate import odeint
import json

# Loading Bayesian models from the provided file
models = {
    "Goti_2018": {
        "description": "Two-compartment vancomycin model with parameters adapted for adults undergoing dialysis.",
        "parameters": {
            "CL_base": 4.5,  # Clearance (L/hr)
            "V": 58.4,  # Volume of distribution (L/70kg)
            "V2": 38.4,  # Peripheral volume of distribution (L)
            "Q": 6.5,  # Intercompartmental clearance (L/hr)
            "TH_CRCL": 0.8,  # Clearance creatinine coefficient
            "TH_DIAL_CL": 0.7,  # Dialysis impact on clearance
            "TH_DIAL_V": 0.5   # Dialysis impact on volume of distribution
        },
        "differential_equations": {
            "dA1_dt": "-(CL_base * (CLCR/120)**TH_CRCL * TH_DIAL_CL / V) * A1 - (Q / V) * A1 + (Q / V2) * A2",
            "dA2_dt": "(Q / V) * A1 - (Q / V2) * A2"
        },
        "comments": "Adapted for adults with normal to impaired renal function; coefficients adjusted for hemodialysis."
    },
    "Carreno_2017": {
        "description": "Bayesian PK model for obese patients developed by Carreno et al., suitable for estimating vancomycin AUC using limited pharmacokinetic sampling.",
        "parameters": {
            "CL": 4.8,  # Clearance (L/hr)
            "V": 75.0,  # Volume of distribution (L)
            "k12": 2.29,  # Transfer rate constant from central to peripheral (1/hr)
            "k21": 1.44,  # Transfer rate constant from peripheral to central (1/hr)
            "ke": 0.3  # Elimination constant from central compartment (1/hr)
        },
        "differential_equations": {
            "dX1_dt": "R(t) - (ke + k12) * X1 + k21 * X2",
            "dX2_dt": "k12 * X1 - k21 * X2"
        },
        "comments": "This model was validated in a cohort of obese patients and works well for estimating AUC based on trough and peak concentrations."
    }
}

def get_model(model_name):
    return models.get(model_name, None)

# Streamlit app
st.title('Vancomycin Bayesian Dosing Calculator')

# Select Bayesian model
model_name = st.selectbox('Select a Bayesian PK model:', options=list(models.keys()))
model = get_model(model_name)

if model:
    st.write(f"### Model Description: {model['description']}")
    st.write("#### Model Parameters:")
    st.json(model['parameters'])

    # User inputs for patient-specific parameters
    weight = st.number_input('Patient Weight (kg):', min_value=1, value=70)
    age = st.number_input('Patient Age (years):', min_value=0, value=30)
    creatinine_clearance = st.number_input('Creatinine Clearance (mL/min):', min_value=0.0, value=120.0)
    dialysis = st.checkbox('Patient on dialysis?')

    # Display the differential equations for the chosen model
    st.write("#### Differential Equations:")
    st.json(model['differential_equations'])

    # Define function for solving ODEs
    def vancomycin_model(y, t, params):
        A1, A2 = y
        CL_base, V, V2, Q, TH_CRCL, TH_DIAL_CL = params
        CLCR = creatinine_clearance
        dA1_dt = eval(model['differential_equations']['dA1_dt'])
        dA2_dt = eval(model['differential_equations']['dA2_dt'])
        return [dA1_dt, dA2_dt]

    # Initial conditions
    A1_0 = 0  # Initial amount in central compartment
    A2_0 = 0  # Initial amount in peripheral compartment
    y0 = [A1_0, A2_0]

    # Time points
    t = np.linspace(0, 24, 100)  # Simulate over 24 hours

    # Solve ODEs
    params = [model['parameters']['CL_base'], model['parameters']['V'], model['parameters']['V2'], model['parameters']['Q'], model['parameters']['TH_CRCL'], model['parameters']['TH_DIAL_CL']]
    solution = odeint(vancomycin_model, y0, t, args=(params,))

    # Plot results
    A1, A2 = solution.T
    plt.figure()
    plt.plot(t, A1, label='Central Compartment')
    plt.plot(t, A2, label='Peripheral Compartment')
    plt.xlabel('Time (hours)')
    plt.ylabel('Amount of Drug (mg)')
    plt.legend()
    plt.title(f'Vancomycin Concentration over Time ({model_name})')
    st.pyplot(plt)

    # Dosing recommendation placeholder
    st.write("### Dosing Recommendation:")
    st.write("This feature will provide dosing recommendations based on Bayesian inference, utilizing patient-specific parameters and population priors from the selected model.")

# GitHub deployment and Render instructions
st.write("---")
st.write("#### Deployment Instructions:")
st.write("1. Clone the GitHub repository.")
st.code("git clone <repo-url>")
st.write("2. Install dependencies using the requirements.txt file.")
st.code("pip install -r requirements.txt")
st.write("3. Deploy the app on Render by linking the GitHub repository and specifying the build command and start command.")
