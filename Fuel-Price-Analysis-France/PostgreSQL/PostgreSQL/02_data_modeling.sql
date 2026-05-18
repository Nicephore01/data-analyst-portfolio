-- Create a global consolidated fuel dataset

CREATE TABLE carburant_global AS

SELECT
    id,
    code_postal,
    ville,
    latitude,
    longitude,
    prix_gazole,
    prix_sp95,
    prix_e85,
    prix_gplc,
    prix_e10,
    prix_sp98,
    departement,
    code_departement,
    region,
    code_region,
    '2026-02' AS mois
FROM prix_carburant_fevrier_2026

UNION ALL

SELECT
    id,
    code_postal,
    ville,
    latitude,
    longitude,
    prix_gazole,
    prix_sp95,
    prix_e85,
    prix_gplc,
    prix_e10,
    prix_sp98,
    departement,
    code_departement,
    region,
    code_region,
    '2026-03'
FROM prix_carburant_mars_2026

UNION ALL

SELECT
    id,
    code_postal,
    ville,
    latitude,
    longitude,
    prix_gazole,
    prix_sp95,
    prix_e85,
    prix_gplc,
    prix_e10,
    prix_sp98,
    departement,
    code_departement,
    region,
    code_region,
    '2026-04'
FROM prix_carburant_avril_2026;

-- Verify duplicate rows

SELECT
    id,
    mois,
    COUNT(*)
FROM carburant_global
GROUP BY id, mois
HAVING COUNT(*) > 1;

-- This consolidated table was later used
-- as the main dataset for Power BI dashboards
-- and fuel price trend analysis.
