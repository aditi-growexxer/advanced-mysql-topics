Create the Table:
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20)
);

Create Trigger:
DELIMITER // CREATE TRIGGER before_order_insert BEFORE
INSERT
    ON orders FOR EACH ROW BEGIN
SET
    NEW.status = 'Pending';

END // DELIMITER;

Insert Data to Test Trigger:
INSERT INTO
    orders (customer_id, order_date)
VALUES
    (3, '2024-03-01');

Verify Trigger Execution:
SELECT
    *
FROM
    orders
WHERE
    customer_id = 3;