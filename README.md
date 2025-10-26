# 🚀 Task 4: Advanced SQL Analysis - Vegetable Sales Performance

## Project Objective

This submission fulfills the advanced SQL requirement for Task 4. The objective was to demonstrate proficiency in complex database querying, including the use of **CTEs, Subqueries, and multi-field Aggregation**, using the provided vegetable sales data.

## 🛠️ Key SQL Analysis & Techniques

The analysis was performed against the `VegSales` table using the following advanced techniques:

* **CTE (Common Table Expression):** Used to calculate the total sales and contribution percentage for each supplier.
* **Subqueries:** Employed to identify specific high-performing months by filtering against the overall average sales volume.
* **Self-JOIN Simulation:** Used to accurately calculate the **Monthly Growth Rate** by joining current and previous month records.
* **Aggregation:** Used to determine total sales volume (`SUM([Sales(kg)])`) and average performance (`AVG([Sales(kg)])`).

## 📁 Repository Contents

| File Name | Purpose |
| :--- | :--- |
| **`Task4_Analysis_Queries.sql`** | Contains the three advanced SQL queries (using CTEs, Subqueries, and JOINs). |
| **`VegSales_Query_Results_1.png`** | Screenshot proof of the **Supplier Performance** query result. |
| **`VegSales_Query_Results_2.png`** | Screenshot proof of the **High-Volume Months** query result. |
| **`simple_vegetable_sales_data.csv`** | The source dataset used for the SQL analysis. |
