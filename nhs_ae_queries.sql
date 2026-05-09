-- Query 1: Top 10 Organisations by Total Attendances
SELECT 
    org_name,
    ae_attendances_type1,
    ae_attendances_type2,
    ae_attendances_other,
    (ae_attendances_type1 + ae_attendances_type2 + ae_attendances_other) AS total_attendances
FROM ae_attendance
ORDER BY total_attendances DESC
LIMIT 10;



-- Query 2: 4-Hour Waiting Time Performance
SELECT 
    org_name,
    ae_attendances_type1,
    attendances_over_4hr_type1,
    ROUND((attendances_over_4hr_type1::NUMERIC / NULLIF(ae_attendances_type1, 0)) * 100, 2) AS breach_rate_pct,
    ROUND((1 - attendances_over_4hr_type1::NUMERIC / NULLIF(ae_attendances_type1, 0)) * 100, 2) AS performance_pct
FROM ae_attendance
WHERE ae_attendances_type1 > 0
ORDER BY breach_rate_pct DESC
LIMIT 10;


-- Query 3: Long Waiting Times
SELECT 
    org_name,
    waited_4_12hr_dta,
    waited_12hr_plus_dta,
    (waited_4_12hr_dta + waited_12hr_plus_dta) AS total_long_waits
FROM ae_attendance
WHERE (waited_4_12hr_dta + waited_12hr_plus_dta) > 0
ORDER BY total_long_waits DESC
LIMIT 10;


-- Query 4: Emergency Admissions via A&E
SELECT 
    org_name,
    emergency_admissions_type1,
    emergency_admissions_type2,
    emergency_admissions_other,
    (emergency_admissions_type1 + emergency_admissions_type2 + emergency_admissions_other) AS total_emergency_admissions,
    (ae_attendances_type1 + ae_attendances_type2 + ae_attendances_other) AS total_attendances,
    ROUND((emergency_admissions_type1 + emergency_admissions_type2 + emergency_admissions_other)::NUMERIC / 
    NULLIF((ae_attendances_type1 + ae_attendances_type2 + ae_attendances_other), 0) * 100, 2) AS admission_rate_pct
FROM ae_attendance
WHERE (ae_attendances_type1 + ae_attendances_type2 + ae_attendances_other) > 0
ORDER BY total_emergency_admissions DESC
LIMIT 10;


-- Query 5: Key Findings Summary
SELECT
    'Total Attendances' AS metric,
    SUM(ae_attendances_type1 + ae_attendances_type2 + ae_attendances_other)::TEXT AS value
FROM ae_attendance

UNION ALL

SELECT
    'Total Type 1 Attendances',
    SUM(ae_attendances_type1)::TEXT
FROM ae_attendance

UNION ALL

SELECT
    'Total 4hr Breaches (Type 1)',
    SUM(attendances_over_4hr_type1)::TEXT
FROM ae_attendance

UNION ALL

SELECT
    'National 4hr Performance (%)',
    ROUND((1 - SUM(attendances_over_4hr_type1)::NUMERIC / NULLIF(SUM(ae_attendances_type1), 0)) * 100, 1)::TEXT
FROM ae_attendance

UNION ALL

SELECT
    'Total 4-12hr DTA Waits',
    SUM(waited_4_12hr_dta)::TEXT
FROM ae_attendance

UNION ALL

SELECT
    'Total 12hr+ DTA Waits',
    SUM(waited_12hr_plus_dta)::TEXT
FROM ae_attendance

UNION ALL

SELECT
    'Total Emergency Admissions',
    SUM(emergency_admissions_type1 + emergency_admissions_type2 + emergency_admissions_other)::TEXT
FROM ae_attendance

UNION ALL

SELECT
    'National Emergency Admission Rate (%)',
    ROUND(SUM(emergency_admissions_type1 + emergency_admissions_type2 + emergency_admissions_other)::NUMERIC / 
    NULLIF(SUM(ae_attendances_type1 + ae_attendances_type2 + ae_attendances_other), 0) * 100, 2)::TEXT
FROM ae_attendance;