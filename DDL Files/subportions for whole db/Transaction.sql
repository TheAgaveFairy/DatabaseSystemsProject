-- Create the Transaction table
CREATE TABLE Transaction (
    Transaction_ID INT PRIMARY KEY,
    INVOICE_ID INT NOT NULL,
    PRODUCT_SKU INT NOT NULL,
    QUANTITY INT NOT NULL,
    TRANSACTION_PRICE DECIMAL(5, 2) NOT NULL,
    Profit_Margin DECIMAL(5, 2) -- Added Profit Margin column
);

-- Insert rows into the Transaction table with calculated Profit Margin
INSERT INTO Transaction (Transaction_ID, INVOICE_ID, PRODUCT_SKU, QUANTITY, TRANSACTION_PRICE, Profit_Margin) VALUES
(1, 47, 4963127, 1, 20.99, (20.99 / 20.99) * 100),
(2, 48, 4963127, 1, 20.99, (20.99 / 20.99) * 100),
(3, 49, 309515038, 1, 11.49, (11.49 / 11.49) * 100),
(4, 50, 309515038, 1, 2.00, (2.00 / 2.00) * 100),
(5, 51, 309515038, 1, 2.00, (2.00 / 2.00) * 100),
(6, 52, 309515038, 1, 11.49, (11.49 / 11.49) * 100),
(7, 53, 309515038, 1, 11.49, (11.49 / 11.49) * 100),
(8, 54, 309515038, 1, 11.49, (11.49 / 11.49) * 100),
(9, 55, 309515038, 1, 11.49, (11.49 / 11.49) * 100),
(10, 56, 309515038, 1, 11.49, (11.49 / 11.49) * 100);

-- Additional inserts with profit margin
INSERT INTO Transaction (Transaction_ID, INVOICE_ID, PRODUCT_SKU, QUANTITY, TRANSACTION_PRICE, Profit_Margin) VALUES
(11, 298, 513072938, 1, 5.99, (5.99 / 5.99) * 100),
(12, 299, 513072938, 1, 5.99, (5.99 / 5.99) * 100),
(13, 300, 513072938, 2, 11.98, (11.98 / 11.98) * 100),
(14, 301, 513072938, 1, 5.99, (5.99 / 5.99) * 100),
(15, 302, 513072938, 2, 11.98, (11.98 / 11.98) * 100),
(16, 303, 513072938, 1, 5.99, (5.99 / 5.99) * 100),
(17, 304, 513072938, 1, 1.50, (1.50 / 1.50) * 100),
(18, 305, 513072938, 1, 1.50, (1.50 / 1.50) * 100),
(19, 306, 513072938, 1, 5.99, (5.99 / 5.99) * 100),
(20, 307, 513072938, 1, 5.99, (5.99 / 5.99) * 100),
(21, 308, 309515038, 1, 11.49, (11.49 / 11.49) * 100),
(22, 309, 309515038, 1, 2.00, (2.00 / 2.00) * 100),
(23, 310, 309515038, 1, 38.99, (38.99 / 38.99) * 100),
(24, 311, 309515038, 1, 27.50, (27.50 / 27.50) * 100),
(25, 312, 309515038, 1, 29.50, (29.50 / 29.50) * 100),
(26, 313, 309515038, 1, 35.99, (35.99 / 35.99) * 100),
(27, 314, 309515038, 2, 57.00, (57.00 / 57.00) * 100),
(28, 315, 4963127, 3, 62.97, (62.97 / 62.97) * 100),
(29, 316, 4963127, 1, 20.99, (20.99 / 20.99) * 100),
(30, 317, 513072938, 4, 23.96, (23.96 / 23.96) * 100);

INSERT INTO Transaction (Transaction_ID, INVOICE_ID, PRODUCT_SKU, QUANTITY, TRANSACTION_PRICE, Profit_Margin) VALUES
(31, 318, 4963127, 2, 41.98, (41.98 / 41.98) * 100),
(32, 319, 4963127, 1, 20.99, (20.99 / 20.99) * 100),
(33, 320, 309515038, 1, 14.99, (14.99 / 14.99) * 100),
(34, 321, 309515038, 2, 29.98, (29.98 / 29.98) * 100),
(35, 322, 309515038, 1, 11.49, (11.49 / 11.49) * 100),
(36, 323, 309515038, 3, 34.47, (34.47 / 34.47) * 100),
(37, 324, 513072938, 1, 5.99, (5.99 / 5.99) * 100),
(38, 325, 513072938, 2, 11.98, (11.98 / 11.98) * 100),
(39, 326, 513072938, 1, 7.99, (7.99 / 7.99) * 100),
(40, 327, 513072938, 1, 12.99, (12.99 / 12.99) * 100),
(41, 328, 309515038, 4, 45.96, (45.96 / 45.96) * 100),
(42, 329, 309515038, 1, 9.99, (9.99 / 9.99) * 100),
(43, 330, 4963127, 1, 20.99, (20.99 / 20.99) * 100),
(44, 331, 4963127, 1, 25.99, (25.99 / 25.99) * 100),
(45, 332, 4963127, 3, 62.97, (62.97 / 62.97) * 100),
(46, 333, 309515038, 2, 23.98, (23.98 / 23.98) * 100),
(47, 334, 513072938, 2, 11.98, (11.98 / 11.98) * 100),
(48, 335, 513072938, 1, 6.99, (6.99 / 6.99) * 100),
(49, 336, 513072938, 3, 17.97, (17.97 / 17.97) * 100),
(50, 337, 513072938, 2, 12.99, (12.99 / 12.99) * 100);


-- Aggregating function queries
-- 1. Sum of all transaction prices
SELECT SUM(TRANSACTION_PRICE) AS Total_Sales FROM Transaction;

-- 2. Average quantity per transaction
SELECT AVG(QUANTITY) AS Average_Quantity FROM Transaction;

-- Join, Concatenation, and Distinct Query
-- Example: Joining a hypothetical Products table to get product names
CREATE TABLE Products (
    PRODUCT_SKU INT PRIMARY KEY,
    PRODUCT_NAME VARCHAR(50)
);

INSERT INTO Products (PRODUCT_SKU, PRODUCT_NAME) VALUES
(4963127, 'Matthiasson Cabernet Sauvignon 750ml'),
(309515038, 'Fidencio Mezcal 750ml'),
(513072938, 'Hamilton 86 Rum 750ml');

SELECT DISTINCT T.Transaction_ID, 
       CONCAT(P.PRODUCT_NAME, ' - Invoice: ', T.INVOICE_ID) AS Product_Invoice_Info, 
       T.TRANSACTION_PRICE
FROM Transaction T
JOIN Products P ON T.PRODUCT_SKU = P.PRODUCT_SKU;

-- Subquery
-- Example: Find transactions where the price is higher than the average price
SELECT * 
FROM Transaction 
WHERE TRANSACTION_PRICE > (SELECT AVG(TRANSACTION_PRICE) FROM Transaction);

-- Order By Query
-- Example: Retrieve all transactions ordered by transaction price in descending order
SELECT * 
FROM
Transaction
ORDER BY TRANSACTION_PRICE DESC;

-- Trigger for Insert
-- Example: Automatically update the quantity in another table when a transaction is added
-- (This part has been removed as we no longer have an Inventory table)

-- Trigger for Delete
-- Example: Automatically remove the transaction record from a log table
CREATE TABLE Transaction_Log (
    LOG_ID INT PRIMARY KEY AUTO_INCREMENT,
    Transaction_ID INT,
    ACTION VARCHAR(10),
    LOG_TIMESTAMP TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$
CREATE TRIGGER AfterTransactionDelete
AFTER DELETE ON Transaction
FOR EACH ROW
BEGIN
    INSERT INTO Transaction_Log (Transaction_ID, ACTION)
    VALUES (OLD.Transaction_ID, 'DELETE');
END$$
DELIMITER ;
