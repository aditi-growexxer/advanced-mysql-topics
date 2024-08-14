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
    (2, '2024-02-15', 'Pending');

Transaction with COMMIT:
START TRANSACTION;

UPDATE
    orders
SET
    status = 'Shipped'
WHERE
    order_id = 1;

DELETE FROM
    orders
WHERE
    order_id = 2;

COMMIT;

Transaction with ROLLBACK:
START TRANSACTION;

UPDATE
    orders
SET
    status = 'Shipped'
WHERE
    order_id = 1;

DELETE FROM
    orders
WHERE
    order_id = 2;

ROLLBACK;