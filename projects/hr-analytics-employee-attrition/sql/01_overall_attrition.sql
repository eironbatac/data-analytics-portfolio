
USE hr_analytics;

-- Overall Employee Attrition Analysis
-- Business question: What percentage of employees left the organization?

SELECT
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_left,
    SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END)
        AS employees_stayed,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition;
