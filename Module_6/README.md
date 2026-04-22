# Module 6: Stored Procedures and Functions

## Overview
This project demonstrates how to create and execute stored procedures and functions in MySQL using the guitar shop database. It focuses on applying key concepts such as parameterized procedures, returning values from functions and reusing logic across database objects. 

## Prerequisites
- MySQL installed 
- MySQL Workbench installed
- My Guitar Shop sample database imported and configured

## Tasks Completed
### Task 1: `insert_category` Stored Procedure
- Created a stored procedure to insert a new category into the `Categories` table
- Used an input parameter for the category name
- Executed multiple test calls with different values
- Observed behavior while attempting to insert duplicate category names

### Task 2: `discount_price` Stored Function
- Created a function to calculate the discounted price of an item
- Used the formula: `item_price - discount_amount`
- Accepted `item_id` as a parameter
- Returned `DECIMAL` value representing the computed price
- Tested the function using a `SELECT` statement

### Task 3: `item_total` Stored Function
- Created a function to calculate the total cost of an item
- Used the formual: `discount_price x quantity`
- Accepted `item_id` as a parameter
- Reused the `discount_price` function within the calculation
- Verified results through a test query

## Observations
- Stored procedures are useful for performing actions like inserting data, while functions are better suited for returning calculated values
- Reusing functions improves consistency and reduces redundant logic
- MySQL may produce Error 1418 when creating functions due to system configuration, not code errors
- Proper use of parameters makes stored routines mor flexible and reusable
- Testing with multiple inputs helps confirm expected behavior and identify constraints like duplicate entries
