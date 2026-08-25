use zepto_sql_project;


CREATE TABLE zepto (
    sku_id SERIAL PRIMARY KEY,
    category VARCHAR(120),
    name VARCHAR(150),
    mrp NUMERIC(10,2),
    discount_percent INT,
    available_quantity INT,
    discounted_selling_price NUMERIC(10,2),
    weight_in_gms INT,
    out_of_stock BOOLEAN,
    quantity INT
);


ALTER TABLE zepto 
MODIFY out_of_stock VARCHAR(10);

-- I have imported the data by right clicking on table in schema and imported my csv file successfully.
-- lets do data exploration

SELECT * FROM zepto;

-- count of rows
SELECT count(*) FROM zepto;

-- sample of data
SELECT *
FROM zepto
LIMIT 10;

-- Checking if there are any null values
SELECT *
FROM zepto
WHERE category IS NULL
   OR name IS NULL
   OR mrp IS NULL
   OR discount_percent IS NULL
   OR available_quantity IS NULL
   OR discounted_selling_price IS NULL
   OR weight_in_gms IS NULL
   OR out_of_stock IS NULL
   OR quantity IS NULL;
   
   -- Different Group Categories
   
SELECT distinct category
FROM zepto 
ORDER BY category;

-- Products in stock vs out of stock

SELECT out_of_stock, count(sku_id) AS count
FROM zepto
GROUP BY out_of_stock;


-- Product name present multiple times
SELECT name, count(sku_id) AS "Number of SKUs"
FROM zepto
GROUP BY name
HAVING count(sku_id) > 1
ORDER BY count(sku_id) DESC; 


-- Data cleaning

-- Product with price = 0 
SELECT *
FROM zepto
WHERE discounted_selling_price = 0  or mrp = 0;

-- Deleting the row we want to clean

DELETE FROM zepto
WHERE sku_id = 3603;

-- Converting paise to rupees

SET SQL_SAFE_UPDATES = 0;

UPDATE zepto
SET mrp = mrp/100.0,
    discounted_selling_price = discounted_selling_price/100.0;





