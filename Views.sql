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
    (2, '2024-02-15', 'Pending'),
    (3, '2024-03-01', 'Shipped');

Create View:
CREATE VIEW RecentOrders AS
SELECT
    *
FROM
    orders
WHERE
    order_date >= CURDATE() - INTERVAL 30 DAY;

Query the View:
SELECT
    *
FROM
    RecentOrders;