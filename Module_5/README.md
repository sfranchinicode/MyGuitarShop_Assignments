# Writing Queries in My Guitar Shop

## Overview

The objective of this project is to practice writing and executing
SQL queries using the My Guitar Shop database in MySQL Workbench. The
exercises focus on: 
- Using aggregate functions such as `COUNT`, `SUM`, and `MAX`
- Joining multiple related tables
- Grouping data using `GROUP BY`
- Filtering grouped results using `HAVING`
- Sorting query outputs for analysis

## Prerequisites

Before running the queries in this project, the following are required: 
- MySQL Server installed and running
- MySQL Workbench installed
- My Guitar Shop sample database imported and configured
- Basic understanding of SQL `SELECT` statements and relational database structure

## Tasks Completed
The following tasks were completed:

### Task 1: Order Summary Analysis
- Calculated total number of orders
- Computed total tax amount from all orders

### Task 2: Product Catergory Analysis
- Retrieved product counts per category
- Identified the highest priced product in each category
- Sorted categories by number of products

### Task 3: Customer Sales and Discounts
- Calculated total sales per customer
- Calculated total discounts per customer
- Sorted customers by total spending

### Task 4: Customer Order Analysis with Filtering
- Counted number of orders per customer
- Calculated total order amounts after discounts 
- Filtered customers with more than one order using `HAVING`
- Sorted results by total order value

## Observations
- Aggregate functions simplify large datasets analysis by sumarizing key metrics. 
- Joining mulitple tables is essential for combining related data.
- The `HAVING` clause is useful for filtering grouped results, especially when `WHERE` cannot be used.
- Correct placement of calculations is important for accurate results.
- Sorting results improves readability and helps identify top-performing categories and customers. 