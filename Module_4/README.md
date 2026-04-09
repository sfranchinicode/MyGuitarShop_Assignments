# Module 4: Modifying Tables in My Guitar Shop Database

## Objective
This module demonstrates how to modify database tables using SQL in
the My Guitar Shop database. This includes inserting new records, updating existing data, deleting records, and adding a detailed product entry while using proper SQL syntax and best practices. 

## Prerequisites
- MySQL Workbench installed and connected to the My Guitar Shop Database
- Basic understanding of the INSERT, UPDATE, DELETE, and SELECT SQL commands

## Tasks Completed

### Task 1: Insert a New Category
- Added a new category named "Brass" into the `Categories` table.
- Used `INSERT` statement without specifying `category_id`.
- Verified insertion using a `SELECT` query

### Task 2: Update the Category Name
- Updated the `category_name` from "Brass" to "Woodwinds"
- Used an `UPDATE` statement with a `WHERE` clause based on the `category_id`
- Verified the update using a `SELECT` query

### Task 3: Delete the Category
- Removed the previously inserted category
- Used a `DELETE` statement with a `WHERE` clause
- Verified the deletion with a `SELECT` query

### Task 4: Insert a New Product
- Inserted a new product into the products table
    - Product: Yamaha DGX 640 88-Key Digital Piano
    - Category ID: 4
    - Price: 799.99
    - Discount: 0%
- Used a column list in the `INSERT` statement
- Used `NOW()` to capture the current date and time
- Allowed `product_id` to auto generate
- Verified the insertion using a `SELECT` query

## Observations
- `AUTO_INCREMENT` fields automatically generate unique IDs, so they should not be manually inserted. 
- Using a `WHERE` clause is critical when doing an `UPDATE` or `DELETE` statement to avoid modifying unintended rows.
- The `NOW()` function is useful for inserting current timestamps into datetime fields.
- Verifying each operation ensures data accuracy and helps prevent errors.
- Small syntax mistakes like missing quotes or incorrect column names can cause query failures. Its important to pay attention to all the details of the queries. 