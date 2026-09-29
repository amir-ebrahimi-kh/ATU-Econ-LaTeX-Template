# The Boyce Effect in MENA Rentier Economies: A Data Pipeline

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Stata](https://img.shields.io/badge/Stata-1A5F7A?style=for-the-badge&logo=stata&logoColor=white)
![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)
![Open Source](https://img.shields.io/badge/Open_Source-Yes-brightgreen?style=for-the-badge)

## Abstract

This repository provides the complete, fully operational data pipeline and econometrics estimation scripts supporting the paper on the "Boyce effect" in Middle Eastern and North African (MENA) rentier economies. The paper executes a dynamic panel threshold regression and bias-corrected Least Squares Dummy Variable (LSDVC) estimations to rigorously test the impact of natural resource rents and capital flight on environmental degradation and economic growth, utilizing comprehensive data from the World Bank and the World Inequality Database (WID).

## Reproduction Guide

The pipeline consists of 8 precisely calibrated scripts (Python and Stata) designed to process the raw datasets, execute the necessary mathematical transformations, and reproduce the exact tables and figures presented in the finalized manuscript.

**Note on Modifications:** To ensure exact reproducibility and to match the finalized manuscript for Ecological Economics, **do not** alter the execution logic, mathematical transformations, random seeds, variable names, or econometric specifications in any of the provided scripts.

### Prerequisites

*   Python 3.9+
*   Stata 16+
*   Required Python packages: `pandas`, `numpy`, `statsmodels`, `matplotlib`, `seaborn` (see `requirements.txt` if available)

### Step-by-Step Execution

1.  **Clone the Repository:**
    ```bash
    git clone https://github.com/your-username/boyce-effect-mena.git
    cd boyce-effect-mena
    ```

2.  **Run Python Data Pre-processing Scripts (Scripts 1-4):**
    Ensure your virtual environment is active and run the Python scripts in numerical order to clean and merge the World Bank and WID data.
    ```bash
    python 01_data_cleaning.py
    python 02_variable_transformation.py
    python 03_merge_datasets.py
    python 04_descriptive_statistics.py
    ```

3.  **Run Stata Econometrics Scripts (Scripts 5-8):**
    Open Stata, navigate to the repository directory, and execute the `.do` files in numerical order. These scripts perform the core econometric estimations, including the dynamic panel threshold and LSDVC models.
    ```stata
    do 05_panel_unit_root_tests.do
    do 06_lsdvc_estimations.do
    do 07_threshold_regression.do
    do 08_robustness_checks.do
    ```

4.  **Outputs:**
    All generated figures, tables, and logs will be saved automatically to their respective output directories (`figures/`, `tables/`, `logs/`).

## Repository Structure

```text
├── 01_data_cleaning.py              # Initial World Bank & WID data cleaning
├── 02_variable_transformation.py    # Log transformations and variable scaling
├── 03_merge_datasets.py             # Merging and panel data structuring
├── 04_descriptive_statistics.py     # Generating summary statistics tables
├── 05_panel_unit_root_tests.do      # Stata script: Stationarity tests
├── 06_lsdvc_estimations.do          # Stata script: Bias-corrected LSDVC models
├── 07_threshold_regression.do       # Stata script: Dynamic panel threshold models
├── 08_robustness_checks.do          # Stata script: Alternative specifications & tests
├── data/                            # Raw data files (World Bank, WID)
├── figures/                         # Generated plots and graphs
├── tables/                          # Output regression tables
├── logs/                            # Stata log files
├── .gitignore                       # Git ignore file
├── LICENSE                          # MIT License file
└── README.md                        # This documentation
```

*(Note: The actual scripts are to be added to this repository by the maintainers.)*
