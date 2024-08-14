Create Table with Full - Text Index:
CREATE TABLE articles (
    article_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    body TEXT,
    FULLTEXT (title, body)
);

Insert Sample Data:
INSERT INTO
    articles (title, body)
VALUES
    (
        'Introduction to MySQL',
        'MySQL is a popular database system.'
    ),
    (
        'Advanced MySQL Techniques',
        'Learn about indexes, triggers, and more.'
    ),
    (
        'Database Optimization Tips',
        'Improve query performance with various techniques.'
    );

Perform Full - Text Search:
SELECT
    *
FROM
    articles
WHERE
    MATCH(title, body) AGAINST('MySQL' IN BOOLEAN MODE);