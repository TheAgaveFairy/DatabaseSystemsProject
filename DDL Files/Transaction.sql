-- Create the Transaction table
CREATE TABLE Transaction (
    Transaction_ID INT PRIMARY KEY,
    INVOICE_ID INT NOT NULL,
    PRODUCT_SKU INT NOT NULL,
    QUANTITY INT NOT NULL,
    TRANSACTION_PRICE DECIMAL(5, 2) NOT NULL
);

-- Insert rows into the Transaction table
INSERT INTO Transaction (Transaction_ID, INVOICE_ID, PRODUCT_SKU, QUANTITY, TRANSACTION_PRICE) VALUES
(1, 47, 4963127, 1, 20.99),
(2, 48, 4963127, 1, 20.99),
(3, 49, 309515038, 1, 11.49),
(4, 50, 309515038, 1, 2.00),
(5, 51, 309515038, 1, 2.00),
(6, 52, 309515038, 1, 11.49),
(7, 53, 309515038, 1, 11.49),
(8, 54, 309515038, 1, 11.49),
(9, 55, 309515038, 1, 11.49),
(10, 56, 309515038, 1, 11.49);

INSERT INTO Transaction (Transaction_ID, INVOICE_ID, PRODUCT_SKU, QUANTITY, TRANSACTION_PRICE) VALUES
(11, 298, 513072938, 1, 5.99),
(12, 299, 513072938, 1, 5.99),
(13, 300, 513072938, 2, 11.98),
(14, 301, 513072938, 1, 5.99),
(15, 302, 513072938, 2, 11.98),
(16, 303, 513072938, 1, 5.99),
(17, 304, 513072938, 1, 1.50),
(18, 305, 513072938, 1, 1.50),
(19, 306, 513072938, 1, 5.99),
(20, 307, 513072938, 1, 5.99);

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
CREATE TABLE Inventory (
    PRODUCT_SKU INT PRIMARY KEY,
    STOCK INT
);

INSERT INTO Inventory (PRODUCT_SKU, STOCK) VALUES
(4963127, 100),
(309515038, 200),
(513072938, 150);

DELIMITER $$
CREATE TRIGGER AfterTransactionInsert
AFTER INSERT ON Transaction
FOR EACH ROW
BEGIN
    UPDATE Inventory
    SET STOCK = STOCK - NEW.QUANTITY
    WHERE PRODUCT_SKU = NEW.PRODUCT_SKU;
END$$
DELIMITER ;

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
