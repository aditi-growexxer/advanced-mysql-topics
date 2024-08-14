Create the Table:
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20)
);

Insert Sample Data:
INSERT INTO
    orders (customer_id, order_date, status)
VALUES
    (1, '2024-01-10', 'Completed'),
    (1, '2024-02-15', 'Pending'),
    (2, '2024-01-20', 'Shipped');

Create Stored Procedure:

DELIMITER //
    CREATE PROCEDURE GetCustomerOrders(IN cust_id INT) BEGIN
SELECT
    *
FROM
    orders
WHERE
    customer_id = cust_id;
END //
DELIMITER;

Call Stored Procedure:
CALL GetCustomerOrders(1);