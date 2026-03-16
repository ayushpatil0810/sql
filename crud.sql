USE "testdb";

CREATE TABLE chai_store (
    id SERIAL PRIMARY KEY,
    chai_name VARCHAR(50),
    price DECIMAL(5, 2),
    chai_type VARCHAR(50),
    available BOOLEAN
);

INSERT INTO
    chai_store (
        chai_name,
        price,
        chai_type,
        available
    )
VALUES (
        'Masala Chai',
        30.00,
        'Spiced',
        TRUE
    ),
    (
        'Green Chai',
        25.00,
        'Herbal',
        TRUE
    ),
    (
        'Black Chai',
        20.00,
        'Classic',
        TRUE
    ),
    (
        'Iced Chai',
        35.00,
        'Cold',
        FALSE
    );

SELECT
    chai_name AS "Chai Name",
    price AS "Cost in INR"
FROM chai_store;

SELECT * FROM chai_store WHERE chai_name LIKE '%Chai%';

SELECT * FROM chai_store where price < 25

SELECT * FROM chai_store ORDER BY price ASC

UPDATE chai_store SET price = 45.00, available = TRUE WHERE chai_name = 'Iced Chai'

SELECT * FROM chai_store

DELETE FROM chai_store WHERE chai_name = 'Black Chai'