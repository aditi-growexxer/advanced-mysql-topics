Create Partitioned Table:
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20)
) PARTITION BY RANGE (YEAR(order_date)) (
    PARTITION p2019
    VALUES
        LESS THAN (2020),
        PARTITION p2020
    VALUES
        LESS THAN (2021),
        PARTITION p2021
    VALUES
        LESS THAN (2022)
);

Insert Sample Data:
INSERT INTO
    orders (customer_id, order_date, status)
VALUES
    (1, '2019-05-01', 'Completed'),
    (2, '2020-06-15', 'Pending'),
    (3, '2021-07-20', 'Shipped');

Query the Partitioned Table:
SELECT
    *
FROM
    orders
WHERE
    order_date BETWEEN '2020-01-01'
    AND '2020-12-31';