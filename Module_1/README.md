# Module 1 - My Guitar Shop Database

This folder contains the SQL queries for Module 1 of the My Guitar Shop assignments.

## Assignment Overview

- Setup the My Guitar Shop database in MySQL Workbench
- Run basic SELECT statements to explore the database
- Use and run provided scripts (`product_details.sql`, `product_summary.sql`, `product_statements.sql`)
- Take screenshots of query results for Canvas submission

## SQL Queries

- `SELECT product_name FROM products;` – Retrieves all product names
- `SELECT COUNT(*) AS number_of_products FROM products;` – Counts all products
- Queries from provided scripts:
  - Product details (product_code, product_name, list_price, discount_percent)
  - Product summary by category (COUNT, AVG)
  - Product statements (filter by price, order by date added)

## How to Use

1. Open MySQL Workbench and connect to your MySQL server
2. Set the default database to `my_guitar_shop`
3. Open a new SQL editor and run queries from `Module1_Assignment.sql`
4. Screenshots of execution results can be taken as required for Canvas submission