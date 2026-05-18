-- Average fuel price evolution

SELECT
    mois,
    AVG(prix_sp95) AS prix_moyen_sp95,
    AVG(prix_gazole) AS prix_moyen_gazole
FROM carburant_global
GROUP BY mois
ORDER BY mois;

--------------------------------------------------

-- Diesel vs SP95 price gap

SELECT
    mois,
    AVG(prix_gazole) - AVG(prix_sp95) AS ecart_prix
FROM carburant_global
GROUP BY mois
ORDER BY mois;

--------------------------------------------------

-- Most impacted regions for SP95

SELECT
    region,
    AVG(prix_sp95) AS prix_moyen_sp95
FROM carburant_global
GROUP BY region
ORDER BY prix_moyen_sp95 DESC
LIMIT 5;

--------------------------------------------------

-- Most impacted regions for diesel

SELECT
    region,
    AVG(prix_gazole) AS prix_moyen_gazole
FROM carburant_global
GROUP BY region
ORDER BY prix_moyen_gazole DESC
LIMIT 5;

--------------------------------------------------

-- Fuel price volatility analysis

SELECT
    mois,
    MAX(prix_sp95) - MIN(prix_sp95) AS ecart_prix
FROM carburant_global
GROUP BY mois
ORDER BY mois;

--------------------------------------------------

-- These analytical queries were later used
-- to support Power BI dashboards,
-- KPI creation,
-- and fuel market trend analysis.
