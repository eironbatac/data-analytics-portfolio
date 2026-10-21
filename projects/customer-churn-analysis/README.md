# Customer Churn Analysis

## Project Overview

This project analyzes customer churn in the telecommunications industry to identify patterns and customer characteristics associated with service cancellations. Using Python for data cleaning, exploratory data analysis (EDA), and visualization, alongside Tableau Public for dashboard development, the project investigates how contract types, customer tenure, payment methods, internet services, monthly charges, and customer demographics relate to churn.

The goal is to translate data-driven findings into actionable recommendations that can help telecommunications businesses improve customer retention.

## Project Objectives

- Calculate the overall customer churn rate.
- Analyze churn patterns across contract types, tenure, and payment methods.
- Examine the relationship between monthly charges, subscribed services, and customer churn.
- Identify customer segments with higher observed churn rates.
- Develop evidence-based recommendations to support customer retention strategies.
- Communicate key findings through a Tableau dashboard.

## Tools & Technologies

- **Python** — Data cleaning, exploratory data analysis, and churn rate calculations.
- **pandas** — Data manipulation, grouping, aggregation, and analysis.
- **Matplotlib** — Creating and exporting data visualizations.
- **Seaborn** — Statistical visualization, including heatmaps.
- **Jupyter Notebook** — Executing and documenting the Python analysis.
- **Visual Studio Code** — Development environment.
- **Tableau Public** — Interactive dashboard and visual analytics.
- **Git and GitHub** — Version control and project publishing.

## Dataset

This project uses the IBM Telco Customer Churn dataset, which contains customer demographics, subscribed services, contract details, billing information, tenure, and churn status.

- **Source:** [Telco Customer Churn Dataset on Kaggle](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)
- **Records:** 7,043 customers
- **Fields:** 21 columns

The dataset was inspected for data quality issues, including duplicate records and missing values. The 11 missing values in `TotalCharges` were retained as missing because they corresponded to customers with zero tenure and no recorded churn.

## Methodology

1. **Data inspection:** Reviewed the dataset's structure, data types, and completeness.
2. **Data quality checks:** Checked for duplicate records and examined missing values.
3. **Exploratory data analysis:** Investigated churn distributions and customer characteristics.
4. **Churn rate analysis:** Calculated overall and segment-level churn rates.
5. **Visualization:** Created charts to compare churn patterns across customer groups.
6. **Dashboard development:** Built a Tableau Public dashboard to communicate key metrics and findings.
7. **Business interpretation:** Developed preliminary recommendations based on the observed patterns.

## Key Findings

The exploratory analysis identified several customer segments with notably different churn rates.

1. **Contract Type:** Month-to-month customers had a churn rate of **42.71%**, compared with **11.27%** for one-year contracts and **2.83%** for two-year contracts.

2. **Customer Tenure:** Customers with 0–12 months of tenure had the highest observed churn rate at **47.44%**. The rate declined to **9.51%** among customers with 49–72 months of tenure.

3. **Payment Method:** Electronic check users had the highest churn rate at **45.29%**, exceeding the rates for other payment methods.

4. **Internet Service:** Fiber optic customers had a churn rate of **41.89%**, compared with **18.96%** for DSL customers and **7.40%** for customers without internet service.

5. **Additional Services:** Customers without online security and tech support had churn rates of **41.77%** and **41.64%**, respectively. Customers subscribed to these services had considerably lower observed churn rates.

6. **Monthly Charges:** Customers who churned had higher average monthly charges (**74.44**) than customers who stayed (**61.27**). Churn rates also varied by monthly charge group, reaching **37.82%** for customers paying 70–100 per month.

7. **Customer Demographics:** Senior citizens had a churn rate of **41.68%**, compared with **23.61%** for non-senior customers. Customers without partners had a churn rate of **32.96%**, compared with **19.66%** for customers with partners. Churn rates by gender were relatively similar.

These findings describe associations in the dataset and do not establish that any particular factor directly causes customer churn. Rates for specific demographic combinations should also be interpreted in the context of the number of customers in each subgroup.

## Tableau Dashboard

The Tableau Public dashboard brings together the main churn metrics and segment-level comparisons.

![Customer Churn Analysis Dashboard](images/customer-churn-dashboard.png)

The dashboard is available in the packaged Tableau workbook, `tableau/customer_churn_analysis.twbx`. The workbook contains the dashboard and supporting worksheets used to explore customer churn patterns.

### Supporting Visualizations

**Churn by Contract Type**

![Churn by Contract Type](images/churn-by-contract.png)

**Churn by Customer Tenure**

![Churn by Customer Tenure](images/churn-by-tenure.png)

**Churn by Payment Method**

![Churn by Payment Method](images/churn-by-payment-method.png)

**Churn by Internet Service**

![Churn by Internet Service](images/churn-by-internet-service.png)

**Churn by Monthly Charges**

![Churn by Monthly Charges](images/churn-by-monthly-charges.png)

**Churn by Demographics**

![Churn by Demographics](images/churn-by-demographics.png)

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
├── images/
│   ├── customer-churn-dashboard.png
│   ├── churn-by-contract.png
│   ├── churn-by-tenure.png
│   ├── churn-by-payment-method.png
│   ├── churn-by-internet-service.png
│   ├── churn-by-monthly-charges.png
│   └── churn-by-demographics.png
├── python/
│   ├── charts/
│   └── analyze_churn.ipynb
├── tableau/
└── README.md
```

The `data/` directory contains the dataset, `images/` contains screenshots for the README, `python/` contains the Jupyter notebook and exported analytical charts, and `tableau/` is reserved for Tableau project files.

## Project Status

**Status: Analysis and dashboard completed**

- Dataset acquired and inspected.
- Data quality checks and exploratory analysis completed in Python.
- Customer churn rates calculated across multiple customer segments.
- Python visualizations generated and saved.
- Tableau dashboard and supporting worksheets completed.
- Key findings and preliminary business recommendations documented.
- README documentation updated with dashboard and visualization screenshots.

## Future Improvements

- Publish or share the Tableau dashboard online where appropriate.
- Further investigate interactions between contract type, tenure, monthly charges, and subscribed services.
- Validate observed patterns using additional statistical analysis.
- Refine business recommendations based on further analysis and customer feedback.
- Explore predictive modeling to identify customers at elevated risk of churn.
