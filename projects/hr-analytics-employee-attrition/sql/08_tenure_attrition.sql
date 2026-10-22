-- Tenure Group Attrition Analysis
-- Business question: How does length of service relate to attrition?

SELECT
    CASE
        WHEN YearsAtCompany BETWEEN 0 AND 1 THEN '0-1 years'
        WHEN YearsAtCompany BETWEEN 2 AND 3 THEN '2-3 years'
        WHEN YearsAtCompany BETWEEN 4 AND 5 THEN '4-5 years'
        WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 years'
        ELSE '11+ years'
    END AS tenure_group,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM employee_attrition
GROUP BY tenure_group
ORDER BY
    CASE tenure_group
        WHEN '0-1 years' THEN 1
        WHEN '2-3 years' THEN 2
        WHEN '4-5 years' THEN 3
        WHEN '6-10 years' THEN 4
        ELSE 5
    END;
