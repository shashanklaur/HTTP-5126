-- YOUR NAME HERE	LAB 4 AGGREGATE FUNCTIONS
-- Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
-- 1 
-- A
SELECT MIN(price) FROM stock_items;
-- B
SELECT MAX(inventory) FROM stock_items;
-- C
SELECT AVG(price) FROM stock_items
-- D
SELECT SUM(inventory) FROM stock_items;

-- 2
-- A
SELECT COUNT(id), role FROM employees GROUP BY role;
-- B
SELECT COUNT(item),category AS 'Mammals' FROM stock_items WHERE category<>'Feline' GROUP BY category;
-- C
SELECT AVG(price) AS 'Average Price ($)', category FROM stock_items WHERE inventory<>0 GROUP BY category;

-- 3
-- A
SELECT SUM(inventory) AS 'In Stock',category AS "Species" FROM stock_items GROUP BY category ORDER BY SUM(inventory);
-- B
SELECT SUM(inventory) AS "inventory total",AVG(price),category FROM stock_items GROUP BY category HAVING SUM(inventory)<100 AND AVG(price)<100;

-- 4
AS "Product",CONCAT("$",price) AS "PRICE",inventory AS "Stock Remaining",category AS "Species", (price*inventory) AS "Potential Earnings" FROM stock_items ORDER BY (price*inventory) DESC;