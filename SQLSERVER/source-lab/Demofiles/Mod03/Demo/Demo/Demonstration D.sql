-- Demonstration D - Use the AdventureWorksLT database on SQL Azure

-- Step 1: Connect to the AdventureWorksLT database
-- The USE statement is not currently compatible with SQL Azure databases.
-- Instead, select AdventureWorksLT from the Available Databases list


-- Step 2: Simple CASE Expression
-- Select and execute the following query to show the use of a simple CASE expression
-- to convert values in a flag-type column to a label.
select * from SalesLT.Product;

SELECT ProductNumber, Name, ListPrice,size, 
	CASE Size
		WHEN 'S' THEN 'Small'
		WHEN 'M' THEN 'Medium'
		WHEN 'L' THEN 'Large' 
		WHEN 'XL' THEN 'Extra Large' 
		ELSE Size
	END AS Size
FROM SalesLT.Product;


-- Step 3: Simple CASE Expression
-- Select and execute the following query to show the use of a simple CASE expression
-- to replace an id with a name. Point out that a JOIN to a reference table will be 
-- a better solution.
SELECT ProductNumber, Name, 
	CASE ProductCategoryID
		WHEN 5 THEN 'Mountain Bikes'
		WHEN 6 THEN 'Road Bikes'
		WHEN 7 THEN 'Touring Bikes'
		ELSE 'Bike Accessories'
	END AS Category
FROM SalesLT.Product;

select * from SalesLT.ProductCategory

---join
SELECT 
p.ProductNumber, p.Name , c.Name as Category
	FROM SalesLT.Product as P join SalesLT.ProductCategory as  C
	on p.ProductCategoryID = c.ProductCategoryID


