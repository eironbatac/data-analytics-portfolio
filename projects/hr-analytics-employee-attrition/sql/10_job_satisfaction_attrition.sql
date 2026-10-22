-- Job Satisfaction Attrition Analysis
-- Business question: How does job satisfaction relate to attrition?
-- Satisfaction levels range from 1 (lowest) to 4 (highest).

SELECT
    JobSatisfaction,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;
