# Module 3: Using Joins in My Guitar Shop Database

## Objective
This module demonstrates how to use SQL joins to retrieve related data from multiple tables in hte My Guitar Shop database.
The tasks include joining categories and products, retrieving customer addresses, filtering shipping addresses and joining multiple tables to view order details using aliases. 

## Prerequisites
- MySQL Workbench installed and connected to the My Guitar Shop database
- Basic understanding of SQL SELECT statements, JOINs, and aliases

## Tasks Completed

### Task 1: Join Categories and Products
- Joined the `Categories` table with the `Products` table.
- Returned columns: `category_name`, `product_name`, `list_price`.
- Sorted results by category name and product name in ascending order.

### Task 2: Join Customers and Addresses by Email
- Joined `Customers` with `Addresses`.
- Returned columns: `first_name`, `last_name`, `line1`, `city`, `state`, `zip_code`.
- Filtered for the customer with the email `allan.sherwood@yahoo.com`.

### Task 3: Return Only Shipping Addresses
- Joined `Customers` with `Addresses`.
- Returned columns: same as Task 2.
- Filtered to show only shipping addresses for each customer.

### Task 4: Join Multiple Tables to View Orders
- Joined `Customers`, `Orders`, `Order_Items`, and `Products`.
- Returned columns: `last_name`, `first_name`, `order_date`, `product_name`, `item_price`, `discount_amount`, `quantity`.
- Sorted results by `last_name`, `order_date`, and `product_name`.

## Observations
- Using aliases (`c`, `p`, `o`, `oi`) makes queries more readable.
- Filtering by `shipping_address_id` ensures one row per customer.
- Stepwise joins are essential when combining multiple tables to avoid syntax errors.

