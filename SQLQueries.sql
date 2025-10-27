SELECT * 
FROM dbo.simple_vegetable_sales_data;

--first query(total sales by supplier)
SELECT 
    Supplier_Name,
    SUM(Sales_kg) AS Total_Sales_kg
FROM dbo.simple_vegetable_sales_data
GROUP BY Supplier_Name
ORDER BY Total_Sales_kg DESC;

--second query(avg sales)
SELECT 
    AVG(Sales_kg) AS Avg_Monthly_Sales
FROM dbo.simple_vegetable_sales_data;

--third query (using lag function)
SELECT 
    Month,
    Sales_kg,
    LAG(Sales_kg, 1) OVER (ORDER BY Month) AS Prev_Month_Sales,
    Sales_kg - LAG(Sales_kg, 1) OVER (ORDER BY Month) AS Sales_Difference
FROM dbo.simple_vegetable_sales_data;

--fourth query(using sub queries)

SELECT *
FROM dbo.simple_vegetable_sales_data
WHERE Sales_kg > (
    SELECT AVG(Sales_kg) FROM dbo.simple_vegetable_sales_data
);

--fifth query(supplier filter example)
SELECT Month, Sales_kg
FROM dbo.simple_vegetable_sales_data
WHERE Supplier_Name = 'Walmart';

--sixth query(using rank function)
SELECT 
    Month,
    Sales_kg,
    RANK() OVER (ORDER BY Sales_kg DESC) AS Sales_Rank
FROM dbo.simple_vegetable_sales_data;

--seventh query(using joins)
SELECT 
    s.Supplier_Name,
    s.Month,
    s.Sales_kg,
    i.Country
FROM dbo.simple_vegetable_sales_data s
INNER JOIN dbo.Supplier_Info i
    ON s.Supplier_Name = i.Supplier_Name;
