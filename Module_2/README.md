# Module 2: My Guitar Shop Queries Continued

## Objective
This module continues working with the My Guitar Shop database, focusing on retrieving and filtering data from the `products` and `customers` tables.  
The tasks include selecting product details, retrieving customer names, and filtering products by price and date added.

## Prerequisites
- MySQL Workbench installed and connected to the My Guitar Shop database  
- Basic understanding of SQL SELECT statements and filtering with WHERE and ORDER BY

## Tasks Completed

### Task 1: Retrieve Product Details
- Ran a `SELECT` statement on the `products` table.  
- Returned columns: `product_code`, `product_name`, `list_price`, `discount_percent`.

### Task 2: Retrieve Full Customer Names
- Ran a `SELECT` statement on the `customers` table.  
- Returned a formatted `full_name` using `CONCAT(last_name, ', ', first_name)`.  
- Filtered for customers with last names starting from 'M' onward.  
- Sorted results by `last_name` in ascending order.

### Task 3: Filter Products by Price and Sort by Date Added
- Ran a `SELECT` statement on the `products` table.  
- Returned columns: `product_name`, `list_price`, `date_added`.  
- Filtered for products with `list_price` between $500 and $2,000.  
- Sorted results by `date_added` in descending order.

## Observations
- Filtering and sorting help narrow down large datasets to useful results.  
- Using `CONCAT` is useful for creating full names in a readable format.  
- Applying multiple conditions in `WHERE` allows targeted queries for business needs.