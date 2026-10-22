# HR Analytics — Employee Attrition Analysis

## Project Overview

This project analyzes employee attrition using the IBM HR Analytics Employee Attrition dataset. The goal is to identify workforce patterns associated with employees leaving the organization and translate the findings into actionable recommendations that may support employee retention.

Python and exploratory data analysis (EDA) are used to examine attrition across employee demographics, job characteristics, compensation, tenure, overtime, satisfaction, and business travel. MySQL is used to perform structured queries and compare attrition rates across employee groups.

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

Two CSV files are retained in the project:

- `WA_Fn-UseC_-HR-Employee-Attrition.csv` — the original dataset used for Python analysis.
- `hr_employee_attrition_clean.csv` — an import-compatible copy prepared for importing the data into MySQL.

The import-compatible copy was created to address the original CSV's MySQL import issue. It contains the dataset prepared for database loading.

## Tools and Technologies

- **Python** — data inspection and exploratory analysis
- **Pandas** — data manipulation and aggregation
- **Matplotlib and Seaborn** — data visualization
- **Jupyter Notebook** — analysis workflow
- **MySQL** — SQL queries and employee attrition analysis
- **VS Code** — development environment
- **Git and GitHub** — version control and project hosting
- **Tableau** — planned dashboard development

## Methodology

1. **Data inspection** — reviewed dataset dimensions, column types, missing values, duplicate records, and constant-value columns.
2. **Data preparation** — examined data suitability for analysis and created derived groups for selected variables.
3. **Exploratory data analysis** — calculated attrition counts and rates across demographic, job-related, and workplace factors.
4. **SQL analysis** — developed and executed queries to summarize overall attrition and compare departments, job roles, overtime, age groups, income groups, job levels, tenure, business travel, satisfaction, work-life balance, and selected combinations of factors.
5. **Business interpretation** — summarized notable patterns and developed recommendations based on the observed results.

## Key Findings

The overall attrition rate was **16.12%**, with 237 of 1,470 employees classified as having left the organization.

### 1. Tenure and Early-Career Attrition

Employees with 0–1 years at the company had an attrition rate of **34.88%**, compared with **8.13%** among employees with 11 or more years of tenure. This indicates that employees in their earliest tenure group may warrant closer retention attention.

### 2. Overtime

Employees who worked overtime had an attrition rate of **30.53%**, compared with **10.44%** among employees who did not work overtime.

### 3. Age Groups

Employees under 25 had the highest attrition rate among the age groups analyzed, at **39.18%**.

### 4. Monthly Income

The low-income group had an attrition rate of **29.27%**, while the high-income group had a rate of **10.33%**.

### 5. Job Roles

Sales Representatives had the highest attrition rate among the job roles analyzed, at **39.76%**.

### 6. Department Differences

The Sales department had an attrition rate of **20.63%**, followed by Human Resources at **19.05%** and Research & Development at **13.84%**.

### 7. Combined Risk Factors

Employees in the low-income group who worked overtime had an attrition rate of **58.49%**. This group showed a particularly high observed rate and may merit further investigation.

These findings describe associations in the dataset; they do not establish that any single factor causes employees to leave.

## Business Recommendations

Based on the exploratory findings, the following actions may be worth investigating:

- **Strengthen onboarding and early-tenure support:** Review onboarding, mentorship, training, and check-ins for employees in their first year.
- **Review overtime practices:** Examine overtime frequency, workload distribution, and staffing levels to identify opportunities to reduce excessive workloads.
- **Investigate Sales Representative attrition:** Review role expectations, training, compensation, performance targets, and employee feedback.
- **Evaluate compensation patterns:** Assess whether compensation is competitive and equitable across roles and experience levels.
- **Monitor combined risk factors:** Examine groups experiencing multiple potential risk indicators, such as low income and overtime, without assuming that these factors cause individual employees to leave.
- **Track retention metrics:** Monitor attrition rates by tenure, job role, department, overtime status, and income group over time.

These recommendations should be evaluated with additional organizational context and employee feedback before implementation.

## Project Structure

```text
hr-analytics-employee-attrition/
├── data/
│   ├── WA_Fn-UseC_-HR-Employee-Attrition.csv
│   └── hr_employee_attrition_clean.csv
├── python/
│   └── 01_hr_data_inspection.ipynb
├── sql/
│   ├── 01_overall_attrition.sql
│   ├── 02_department_attrition.sql
│   ├── 03_job_role_attrition.sql
│   ├── 04_overtime_attrition.sql
│   ├── 05_age_group_attrition.sql
│   ├── 06_income_group_attrition.sql
│   ├── 07_job_level_attrition.sql
│   ├── 08_tenure_attrition.sql
│   ├── 09_business_travel_attrition.sql
│   ├── 10_job_satisfaction_attrition.sql
│   ├── 11_work_life_balance_attrition.sql
│   ├── 12_travel_overtime_attrition.sql
│   └── 13_income_overtime_attrition.sql
├── tableau/
└── README.md
```

## Project Status

- [x] Initial data inspection
- [x] Exploratory data analysis
- [x] Summary of findings and business recommendations
- [x] SQL-based analysis
- [ ] Tableau dashboard
- [ ] Final portfolio presentation

## Limitations

This analysis uses a single employee dataset and primarily examines descriptive patterns. The findings do not establish causation, and the dataset may not represent the conditions of other organizations. Further investigation, additional context, and validation would be needed before using these patterns to guide real-world employment decisions.

## Author

**Eiron T. Batac**

Data Analytics Portfolio Project
