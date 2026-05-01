## Portfolio_Project

## Overview
This project focuses on writing and executing advanced SQL queries using the My Guitar Shop database. The objective is to demonstrate proficiency in data retrieval, calculations, joins, aggregation, and database security through user priviledge management. Each task involves constructing SQL statements, executing them, and verifying results.

## Prerequisites 
- MySQL Server installed and running
- My Guitar Shop database set up
- MySQL Workbench
- Basic understanding of SQL concepts

## Tasks Completed
### Task 1
Calculated discound amounts and final prices for products using expressions and rounding, sorted results, and limited output.
### Task 2
Analyze order items totals by computing `price_totals`, `discount_totals`, and `item_totals` with filtering and sorting.
### Task 3
Identified products with matching list prices by utilizing a self-join.
### Task 4
Found unused categories by applying a `LEFT JOIN` and filtering for `NULL` values.
### Task 5
Inserted a new customer record using a column-specific `INSERT` statement.
### Task 6
Determined which customers ordered more thatn one distinct product using aggregation and filtering.
### Task 7
Generated product quantity summaries by category using `GROUP BY` with `ROLLUP`, including category and grand totals.
### Task 8
Created a new MySQL user and assigned specific privileges across database tables, followed by verification of permissions. 

## Observations
This project reinforced the importance of choosing the correct type of `JOIN` depending on the desired result set, especially when identifying missing relationships like unused categories. Aggregate functions combined with `GROUP BY` and `ROLLUP` provided efficient ways to summarize data at multiple levels. The use of calculated columns highlighted how SQL can perform inline data transformations without modifying stored data. Additionally, managing user permissions emphazised database security best practices, particularly the principle of least privilege by restricting access based on necessity. 