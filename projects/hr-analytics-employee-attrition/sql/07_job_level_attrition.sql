-- Job Level Attrition Analysis
-- Business question: Which job levels have the highest attrition rates?

SELECT
    JobLevel,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY JobLevel
ORDER BY JobLevel;
