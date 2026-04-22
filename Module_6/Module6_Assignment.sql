-- Module 6: Create and Call Stored Procedures and Functions

-- 1. Create and Call the "insert_category" Stored Procedure
DELIMITER //

CREATE PROCEDURE insert_category(
    in p_category_name varchar(255) -- Input parameter for new category name
)
BEGIN
    -- Insert a new row into categories table
    INSERT INTO Categories (category_name)
    VALUES (p_category_name);
END

// 
DELIMITER ;

-- Test procedure with different values
CALL insert_category('Guitar Accessories');
CALL insert_category('Sheet Music');

-- 2. Create and Call the "discount_price" Stored Procedure
DELIMITER //

CREATE FUNCTION discount_price(
    p_item_id INT  -- Input item ID to look up
)
RETURNS DECIMAL(10,2)
READS SQL DATA  -- indicates the function reads table data
BEGIN
    DECLARE v_discount_price DECIMAL(10,2);
    -- Calculate discounted price for the given item
    SELECT (item_price - discount_amount)
    INTO v_discount_price
    FROM Order_items
    WHERE item_id = p_item_id;

    RETURN v_discount_price; 
END 

//
DELIMITER ;

-- Test the function
SELECT discount_price(1);

-- 3. Create and Call the "item_total" Stored Function
DELIMITER //

CREATE FUNCTION item_total(
    p_item_id INT
)
RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    DECLARE v_total DECIMAL(10,2);
    DECLARE v_quantity INT;
    DECLARE v_discount_price DECIMAL(10,2);

    -- Get Quantity
    SELECT quantity 
    INTO v_quantity
    FROM Order_items
    WHERE item_id = p_item_id;

    -- Call previous function
    SET v_discount_price = discount_price(p_item_id);

    -- Calculate total
    SET v_total = v_discount_price * v_quantity;

    RETURN v_total;
END

//
DELIMITER ;

-- Test the function
SELECT item_total(1);