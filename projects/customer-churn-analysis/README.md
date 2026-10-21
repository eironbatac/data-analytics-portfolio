# Customer Churn Analysis

## Project Overview

This project analyzes customer churn in the telecommunications industry to identify patterns and customer characteristics associated with service cancellations. Using Python for data cleaning, exploratory data analysis (EDA), and visualization, the project investigates how contract types, customer tenure, payment methods, internet services, monthly charges, and customer demographics relate to churn.

The goal is to translate data-driven findings into actionable recommendations that can help telecommunications businesses improve customer retention.

## Project Objectives

- Calculate the overall customer churn rate.
- Analyze churn patterns across contract types, tenure, and payment methods.
- Examine the relationship between monthly charges, subscribed services, and customer churn.
- Identify customer segments with higher observed churn rates.
- Develop evidence-based recommendations to support customer retention strategies.

## Tools & Technologies

- **Python** – Data cleaning, exploratory data analysis, and churn rate calculations.
- **pandas** – Data manipulation, grouping, aggregation, and analysis.
- **Matplotlib** – Creating and saving data visualizations.
- **Seaborn** – Statistical visualization, including heatmaps.
- **Visual Studio Code** – Writing and executing Python code in a Jupyter notebook.
- **Git and GitHub** – Version control and project publishing.

## Dataset

This project uses the IBM Telco Customer Churn dataset, which contains customer demographics, subscribed services, contract details, billing information, tenure, and churn status.

The dataset is used to investigate customer behavior and identify patterns associated with churn in the telecommunications industry.

**Source:** [Telco Customer Churn Dataset on Kaggle](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)

## Key Findings

The exploratory analysis identified several customer segments with notably different churn rates.

1. **Contract Type:** Month-to-month customers had a churn rate of 42.71%, compared with 11.27% for one-year contracts and 2.83% for two-year contracts.

2. **Customer Tenure:** Customers with 0–12 months of tenure had the highest observed churn rate at 47.44%. The rate declined to 9.51% among customers with 49–72 months of tenure.

3. **Payment Method:** Electronic check users had the highest churn rate at 45.29%, substantially exceeding the rates for other payment methods.

4. **Internet Service:** Fiber optic customers had a churn rate of 41.89%, compared with 18.96% for DSL customers and 7.40% for customers without internet service.

5. **Additional Services:** Customers without online security and tech support had churn rates of 41.77% and 41.64%, respectively. Customers subscribed to these services had considerably lower observed churn rates.

6. **Monthly Charges:** Customers who churned had higher average monthly charges (74.44) than customers who stayed (61.27). This difference warrants further investigation alongside contract type and subscribed services.

7. **Customer Demographics:** Senior citizens had a churn rate of 41.68%, compared with 23.61% for non-senior customers. Customers without partners had a churn rate of 32.96%, compared with 19.66% for customers with partners. Churn rates by gender were relatively similar.

These findings describe associations in the dataset and do not establish that any particular factor directly causes customer churn.

## Business Recommendations

Based on the exploratory findings, the following actions could be investigated:

- **Improve early customer retention:** Strengthen onboarding, customer engagement, and support during the first year of service.
- **Review contract strategies:** Investigate why month-to-month customers churn more frequently and evaluate appropriate longer-term contract incentives.
- **Investigate fiber optic churn:** Examine customer feedback, service quality, pricing, and expectations among fiber optic subscribers.
- **Review payment experiences:** Investigate whether electronic check users encounter payment-related friction and evaluate convenient alternative payment options.
- **Promote service value:** Assess the perceived value and accessibility of online security and technical support services.
- **Investigate pricing and service combinations:** Explore how monthly charges, contract types, and subscribed services interact with churn behavior.

These recommendations should be evaluated using additional analysis and customer feedback before implementation.

## Project Structure

```text
customer-churn-analysis/
├── data/
│   └── WA_Fn-UseC_-Telco-Customer-Churn.csv
├── python/
│   ├── charts/
│   │   ├── churn_heatmap_contract_internet.png
│   │   ├── churn_rate_by_contract.png
│   │   ├── churn_rate_by_demographics.png
│   │   ├── churn_rate_by_internet.png
│   │   ├── churn_rate_by_monthly_charge.png
│   │   ├── churn_rate_by_payment.png
│   │   ├── churn_rate_by_tenure.png
│   │   └── churn_rate_security_tech_support.png
│   └── analyze_churn.ipynb
├── tableau/
└── README.md
```

The `data/` directory contains the original dataset. The `python/` directory contains the Jupyter notebook used for data cleaning and exploratory analysis, along with the exported visualizations in `python/charts/`. The `tableau/` directory is reserved for the interactive dashboard and related Tableau files.

## Project Status

**Status: In Progress**

- Dataset acquired and inspected.
- Data cleaning and exploratory data analysis completed in Python.
- Customer churn rates calculated across multiple customer segments.
- Eight visualizations generated and saved in `python/charts/`.
- Key findings and preliminary business recommendations documented.
- Tableau dashboard development and final project documentation pending.

## Future Improvements

- Develop an interactive Tableau dashboard to communicate the key findings.
- Further investigate interactions between contract type, tenure, monthly charges, and subscribed services.
- Validate the observed patterns using additional statistical analysis.
- Refine business recommendations based on further analysis and customer feedback.
