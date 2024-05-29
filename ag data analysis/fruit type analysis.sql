-- show all the row and columns of datasets
select * from `fruits type`;

-- show average  area provided for citrus in last 10 year 
SELECT Avg(`Citrus_Total Area (Ha.)`) AS total_citrus_area
FROM `fruits type`;

-- top 5 year where total area for citrus is high?
SELECT Year AS highest_citrus_production_year,
    SUM(`Citrus_Total Area (Ha.)`) AS total_citrus_area
FROM `fruits type` 
GROUP BY Year
ORDER BY total_citrus_area DESC
LIMIT 5;

-- when was the highest production of citrus happen in last year?
SELECT Year AS highest_citrus_production_year,
    SUM(`Citrus_Production (Mt.)`) AS total_citrus_prod
FROM `fruits type` 
GROUP BY Year
ORDER BY total_citrus_prod DESC
LIMIT 1;

-- show top 5 total yield of citrus by year
SELECT Year AS highest_citrus_yield_year,
    SUM(`Citrus_Yield (Mt./Ha.)`) AS total_citrus_yield
FROM `fruits type` 
GROUP BY Year
ORDER BY total_citrus_yield DESC
LIMIT 5;

-- show top 5 total area provided for winter fruits by year
SELECT Year AS highest_winter_area,
    SUM(`Winter_Total Area (Ha.)`) AS total_winter_area
FROM `fruits type` 
GROUP BY Year
ORDER BY total_winter_area DESC
LIMIT 5;

-- show the highest winter fruit produced by year
SELECT Year AS highest_winter_production_year,
    SUM(`Winter_Production (Mt.)`) AS total_winter_prod
FROM `fruits type` 
GROUP BY Year
ORDER BY total_winter_prod DESC
LIMIT 10;


-- show top 5 total yield of winter friuts by year
SELECT Year AS highest_winter_yield_year,
    SUM(`Winter_Yield (Mt./Ha.)`) AS total_winter_yield
FROM `fruits type` 
GROUP BY Year
ORDER BY total_winter_yield DESC
LIMIT 5;


-- What percentage of the total area allocated for winter fruits is actually productive?
SELECT Year,
    (SUM(`Winter_Productive Area (Ha.)`) / SUM(`Winter_Total Area (Ha.)`)) * 100 AS productivity_percentage
FROM `fruits type`
GROUP BY Year ;


-- show top 5 total area provided for summer fruits by year
SELECT Year AS highest_summer_area,
    SUM(`Summer_Total Area (Ha.)`) AS total_summer_area
FROM `fruits type` 
GROUP BY Year
ORDER BY total_summer_area DESC
LIMIT 5;


-- What percentage of the total area allocated for summer fruits is actually productive?
SELECT Year,
    (SUM(`Summer_Productive Area (Ha.)`) / SUM(`Summer_Total Area (Ha.)`)) * 100 AS productivity_percentage
FROM `fruits type`
GROUP BY Year ;


-- show the highest summer fruit produced by year
SELECT Year AS highest_summerfruit_production_year,
    SUM(`Summer_Production (Mt.)`) AS total_summer_prod
FROM `fruits type` 
GROUP BY Year
ORDER BY total_summer_prod DESC
LIMIT 10;


-- -- show top 5 total yield of summer fruits by year
SELECT Year AS highest_summerfruit_yield_year,
    SUM(`Summer_Yield (Mt./Ha.)`) AS total_summerfruit_yield
FROM `fruits type` 
GROUP BY Year
ORDER BY total_summerfruit_yield DESC
LIMIT 5;