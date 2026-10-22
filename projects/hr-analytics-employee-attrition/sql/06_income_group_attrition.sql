-- Income Group Attrition Analysis
-- Business question: How does monthly income relate to employee attrition?

SELECT
    CASE
        WHEN MonthlyIncome <= 2911 THEN 'Low'
        WHEN MonthlyIncome <= 5343 THEN 'Lower-Middle'
        WHEN MonthlyIncome <= 8834 THEN 'Upper-Middle'
        ELSE 'High'
    END AS income_group,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY income_group
ORDER BY
    CASE income_group
        WHEN 'Low' THEN 1
        WHEN 'Lower-Middle' THEN 2
        WHEN 'Upper-Middle' THEN 3
        ELSE 4
    END;
