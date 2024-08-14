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
    (2, '2024-01-20', 'Shipped'),
    (2, '2024-02-25', 'Completed');

Create Composite Index:
CREATE INDEX idx_customer_date ON orders (customer_id, order_date);

Query Using Composite Index: EXPLAIN
SELECT
    *
FROM
    orders
WHERE
    customer_id = 1
    AND order_date BETWEEN '2024-01-01'
    AND '2024-01-31';