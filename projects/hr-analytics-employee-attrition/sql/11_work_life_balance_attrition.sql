-- Work-Life Balance Attrition Analysis
-- Business question: How does work-life balance relate to attrition?
-- Ratings range from 1 (lowest) to 4 (highest).

SELECT
    WorkLifeBalance,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;
