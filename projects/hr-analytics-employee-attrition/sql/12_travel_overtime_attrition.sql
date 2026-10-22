-- Combined Business Travel and Overtime Analysis
-- Business question: Which travel and overtime combinations have
-- the highest employee attrition rates?

SELECT
    BusinessTravel,
    OverTime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY BusinessTravel, OverTime
ORDER BY attrition_rate_pct DESC;
