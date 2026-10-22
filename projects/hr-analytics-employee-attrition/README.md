# HR Analytics — Employee Attrition Analysis

## Project Overview

This project analyzes employee attrition using the IBM HR Analytics Employee Attrition dataset. The goal is to identify workforce patterns associated with employees leaving the organization and translate the findings into actionable recommendations that may support employee retention.

Python and exploratory data analysis (EDA) are used to examine attrition across employee demographics, job characteristics, compensation, tenure, overtime, satisfaction, and business travel.

## Business Problem

Employee turnover can affect workforce stability, recruitment costs, and organizational productivity. Understanding which employee groups have higher attrition rates can help an organization investigate potential retention risks and prioritize further analysis.

This project addresses the following questions:

- What is the overall employee attrition rate?
- Which departments and job roles have higher attrition rates?
- How are age, income, job level, and tenure associated with attrition?
- How do overtime, job satisfaction, work-life balance, and business travel relate to attrition?
- Which employee groups may warrant further investigation and targeted retention initiatives?

## Dataset

The project uses the IBM HR Analytics Employee Attrition dataset.

- **Records:** 1,470 employees
- **Columns:** 35
- **Target variable:** `Attrition` (`Yes` or `No`)
- **Missing values:** None identified during initial inspection
- **Duplicate rows:** None identified during initial inspection

The dataset includes employee demographics, job information, compensation, tenure, job satisfaction, work-life balance, overtime, and business travel.

## Tools and Technologies

- **Python** — data inspection and exploratory analysis
- **Pandas** — data manipulation and aggregation
- **Matplotlib and Seaborn** — data visualization
- **Jupyter Notebook** — analysis workflow
- **Git and GitHub** — version control and project hosting
- **Tableau** — planned dashboard development

## Methodology

1. **Data inspection** — reviewed dataset dimensions, column types, missing values, duplicates, and constant-value columns.
2. **Data preparation** — examined data suitability for analysis and created derived groups for selected variables.
3. **Exploratory data analysis** — calculated attrition counts and rates across demographic, job-related, and workplace factors.
4. **Comparative analysis** — examined combinations of factors, including overtime with business travel and overtime with income groups.
5. **Business interpretation** — summarized notable patterns and developed recommendations based on the observed results.

## Key Findings

The overall attrition rate was **16.12%**, with 237 of 1,470 employees classified as having left the organization.

### 1. Tenure and Early-Career Attrition

Employees with 0–1 years at the company had an attrition rate of **34.88%**, compared with 8.13% among employees with 11 or more years of tenure. This indicates that employees in their earliest tenure group may warrant closer retention attention.

### 2. Overtime

Employees who worked overtime had an attrition rate of **30.53%**, compared with **10.44%** among employees who did not work overtime.

### 3. Age Groups

Employees under 25 had the highest attrition rate among the age groups analyzed, at **39.18%**.

### 4. Monthly Income

The low-income group had an attrition rate of **29.27%**, while the high-income group had a rate of **10.33%**.

### 5. Job Roles

Sales Representatives had the highest attrition rate among the job roles analyzed, at **39.76%**.

### 6. Combined Risk Factors

Employees in the low-income group who worked overtime had an attrition rate of **58.49%**. This combined group showed a particularly high observed rate and may merit further investigation.

These findings describe associations in the dataset; they do not establish that any single factor causes employees to leave.

## Business Recommendations

Based on the exploratory findings, the following actions may be worth investigating:

- **Strengthen onboarding and early-tenure support:** Review onboarding, mentorship, training, and check-ins for employees in their first year.
- **Review overtime practices:** Examine overtime frequency, workload distribution, and staffing levels to identify opportunities to reduce excessive workloads.
- **Investigate Sales Representative attrition:** Review role expectations, training, compensation, performance targets, and employee feedback.
- **Evaluate compensation patterns:** Assess whether compensation is competitive and equitable across roles and experience levels.
- **Monitor combined risk factors:** Examine employees experiencing multiple potential risk indicators, such as low income and overtime, while avoiding assumptions about individual employees.
- **Track retention metrics:** Monitor attrition rate by tenure, job role, department, overtime status, and income group over time.

These recommendations should be evaluated with additional organizational context and employee feedback before implementation.

## Project Structure

```text
hr-analytics-employee-attrition/
├── data/
│   └── WA_Fn-UseC_-HR-Employee-Attrition.csv
├── python/
│   └── 01_hr_data_inspection.ipynb
├── sql/
├── tableau/
└── README.md
```

## Project Status

- [x] Initial data inspection
- [x] Exploratory data analysis
- [x] Summary of findings and business recommendations
- [ ] SQL-based analysis
- [ ] Tableau dashboard
- [ ] Final portfolio presentation

## Limitations

This analysis uses a single employee dataset and primarily examines descriptive patterns. The findings do not establish causation, and the dataset may not represent the conditions of other organizations. Further investigation, additional context, and validation would be needed before using these patterns to guide real-world employment decisions.

## Author

**Eiron T. Batac**

Data Analytics Portfolio Project
