-- Convert fuel price columns to numeric values

ALTER TABLE prix_carburant_mars_2026

ALTER COLUMN latitude TYPE NUMERIC USING NULLIF(latitude, '')::numeric,
ALTER COLUMN longitude TYPE NUMERIC USING NULLIF(longitude, '')::numeric,
ALTER COLUMN prix_gazole TYPE NUMERIC USING NULLIF(prix_gazole, '')::numeric,
ALTER COLUMN prix_sp95 TYPE NUMERIC USING NULLIF(prix_sp95, '')::numeric,
ALTER COLUMN prix_e85 TYPE NUMERIC USING NULLIF(prix_e85, '')::numeric,
ALTER COLUMN prix_gplc TYPE NUMERIC USING NULLIF(prix_gplc, '')::numeric,
ALTER COLUMN prix_e10 TYPE NUMERIC USING NULLIF(prix_e10, '')::numeric,
ALTER COLUMN prix_sp98 TYPE NUMERIC USING NULLIF(prix_sp98, '')::numeric;

-- Similar cleaning operations were applied to February and April datasets
