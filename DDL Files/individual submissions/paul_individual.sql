# Question One
# Sales statistics per customer.
SELECT SUM(INVOICE_TOTAL), AVG(INVOICE_TOTAL), cus.CUSTOMER_NAME FROM invoice i JOIN customer cus ON cus.CUSTOMER_ID = i.CUSTOMER_ID WHERE cus.CUSTOMER_ID != 4 GROUP BY cus.CUSTOMER_ID;

# Question Two
# What items are each customer buying?
SELECT DISTINCT cus.CUSTOMER_NAME, CONCAT(c.CATEGORY_NAME, " ", p.PRODUCT_NAME) AS `Product`
FROM transactions t JOIN invoice i ON t.INVOICE_ID = i.INVOICE_ID JOIN product p ON t.PRODUCT_SKU = p.PRODUCT_SKU JOIN category c ON p.CATEGORY_ID = c.CATEGORY_ID JOIN customer cus ON cus.CUSTOMER_ID = i.CUSTOMER_ID
ORDER BY cus.CUSTOMER_NAME;

# Question Three
# Who is buying the most of the top selling product, and in what quantities?
SELECT p.PRODUCT_NAME, t.QUANTITY, t.transactions_PRICE, t.INVOICE_ID, c.CUSTOMER_NAME FROM (
	SELECT SUM(transactions_PRICE) AS "Total Sales", p.PRODUCT_NAME, p.PRODUCT_SKU FROM transactions t JOIN product p ON t.PRODUCT_SKU = p.PRODUCT_SKU GROUP BY t.PRODUCT_SKU ORDER BY `Total Sales` DESC LIMIT 1
) as top_seller
JOIN product p ON top_seller.PRODUCT_SKU = p.PRODUCT_SKU JOIN transactions t on top_seller.PRODUCT_SKU = t.PRODUCT_SKU JOIN invoice i ON t.INVOICE_ID = i.INVOICE_ID JOIN customer c ON i.CUSTOMER_ID = c.CUSTOMER_ID
ORDER BY t.QUANTITY DESC;

# Question Four
# Most Expensive Retail Items
SELECT * FROM product ORDER BY PRICE_TIER_1 DESC LIMIT 10;

# Question Five
# Modify invoice totals if we add an item to it.
DELIMITER //
CREATE TRIGGER update_invoice
AFTER INSERT ON transactions
FOR EACH ROW
BEGIN
	UPDATE invoice i
    SET i.INVOICE_TOTAL = i.INVOICE_TOTAL + NEW.transactions_PRICE
    WHERE i.INVOICE_ID = NEW.INVOICE_ID;
END //
DELIMITER ;

SELECT * FROM invoice i WHERE i.INVOICE_ID = 120;
#SELECT * FROM transactions t WHERE t.INVOICE_ID = 120;
INSERT INTO transactions (INVOICE_ID, PRODUCT_SKU, QUANTITY, transactions_PRICE) VALUES (120, '1234500000203', 3, 900.00);
SELECT * FROM invoice i WHERE i.INVOICE_ID = 120;

# Question Six
# Reliving trauma of losing a fantastic supplier.
DELIMITER //
CREATE TRIGGER handle_supplier_deletion
BEFORE DELETE ON supplier
FOR EACH ROW
BEGIN
    -- First update any products to remove the supplier reference
    UPDATE product
    SET SUPPLIER_ID = NULL
    WHERE SUPPLIER_ID = OLD.SUPPLIER_ID;
    
    -- Now the supplier can be safely deleted since no rows reference it
END //
DELIMITER ;

SELECT * FROM product p JOIN supplier s ON s.SUPPLIER_ID = p.SUPPLIER_ID WHERE s.SUPPLIER_ID = 7;
DELETE FROM supplier WHERE SUPPLIER_ID = 7;
SELECT * FROM product p JOIN supplier s ON s.SUPPLIER_ID = p.SUPPLIER_ID WHERE s.SUPPLIER_ID = 7;

#SHOW CREATE TABLE inventory;