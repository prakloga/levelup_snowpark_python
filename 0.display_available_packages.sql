--> https://docs.snowflake.com/en/developer-guide/udf/python/udf-python-packages#using-third-party-packages-from-anaconda
select * from information_schema.packages where language='python';

CREATE OR REPLACE TABLE demo_db.public.sample_product_data (id INT, parent_id INT, category_id INT, name VARCHAR, serial_number VARCHAR, key INT, "3rd" INT);

INSERT INTO demo_db.public.sample_product_data VALUES
(1, 0, 5, 'Product 1', 'prod-1', 1, 10),
(2, 1, 5, 'Product 1A', 'prod-1-A', 1, 20),
(3, 1, 5, 'Product 1B', 'prod-1-B', 1, 30),
(4, 0, 10, 'Product 2', 'prod-2', 2, 40),
(5, 4, 10, 'Product 2A', 'prod-2-A', 2, 50),
(6, 4, 10, 'Product 2B', 'prod-2-B', 2, 60),
(7, 0, 20, 'Product 3', 'prod-3', 3, 70),
(8, 7, 20, 'Product 3A', 'prod-3-A', 3, 80),
(9, 7, 20, 'Product 3B', 'prod-3-B', 3, 90),
(10, 0, 50, 'Product 4', 'prod-4', 4, 100),
(11, 10, 50, 'Product 4A', 'prod-4-A', 4, 100),
(12, 10, 50, 'Product 4B', 'prod-4-B', 4, 100)
;




