-- show all the row and column of tables
SELECT * FROM data_new.`fresh vegetables`;

-- check columns has null values or not
SELECT *FROM data_new.`fresh vegetables`
WHERE Area IS NULL OR Production IS NULL OR Yield IS NULL;

-- What are the different types of vegetables included in the dataset?
SELECT DISTINCT vegetables FROM data_new.`fresh vegetables`;

-- What is the total production volume of all vegetables in the dataset?
SELECT SUM(Production) AS total_production_volume
FROM data_new.`fresh vegetables`;

-- What is the average yield per hectare across all vegetable types ?
SELECT AVG(Yield) AS average_yield_per_hectare
FROM data_new.`fresh vegetables`;

-- What are the top five vegetable types by total production volume?
SELECT Vegetables, SUM(Production) AS total_production_volume
FROM data_new.`fresh vegetables`GROUP BY Vegetables
ORDER BY total_production_volume DESC LIMIT 5;

-- What are the least five vegetable types by total production volume?
SELECT Vegetables, SUM(Production) AS total_production_volume
FROM data_new.`fresh vegetables`GROUP BY Vegetables
ORDER BY total_production_volume Asc LIMIT 5;

-- Which vegetable type has the highest average yield per hectare?
SELECT Vegetables, AVG(Yield) AS average_yield_per_hectare
FROM  data_new.`fresh vegetables`
GROUP BY Vegetables
ORDER BY average_yield_per_hectare DESC
LIMIT 1;

-- What are the top five vegetable types by total area ?
SELECT Vegetables, SUM(Area) AS total_area
FROM data_new.`fresh vegetables`GROUP BY Vegetables
ORDER BY total_area DESC LIMIT 5;

-- What are the least five vegetable types by total area?  
SELECT Vegetables, SUM(Production) AS total_production_volume
FROM data_new.`fresh vegetables`GROUP BY Vegetables
ORDER BY total_production_volume Asc LIMIT 5;


-- what are total production volume of each vegetable type for each total area used for production? 
SELECT Vegetables,Area,SUM(Production) AS total_production_volume
FROM data_new.`fresh vegetables`
GROUP BY Vegetables,Area
ORDER BY Area,total_production_volume DESC;


