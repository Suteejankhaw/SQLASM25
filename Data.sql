CREATE DATABASE Order;

USE Order;

CREATE TABLE customers (
    customers_id INT PRIMARY KEY ,
    customers_name VARCHAR(255),
    C_address VARCHAR(255),
    Tax_id VARCHAR(13)
);

INSERT INTO customers (customers_id,customers_name, C_address,Tax_id) VALUES
(30626708,'Kevin', 'Suzy Queue', '943382019458'),
(31054009,'Peter', 'Smith4455 Landing Lange, APT 4', '943008700235'),
(40359987,'Adam', 'Louisville, KY 40018-1234', '998702411580');

CREATE TABLE product (
    product_id VARCHAR(50) PRIMARY KEY ,
    product_name VARCHAR(255),
    price DECIMAL(10,2)
);

INSERT INTO product (product_id,product_name,price) VALUES
('A0147079','SSD 1.TB',3560.00),
('A0918702','RTX 5090',145000.00),
('C8094750','I5-19800F',16000.00);

CREATE TABLE invoices (
    invoices_id VARCHAR(50) PRIMARY KEY ,
    Order_name VARCHAR(255),
    DATE_Order DATE
);

INSERT INTO invoices (invoices_id,Order_name,DATE_Order) VALUES
('BP66026683','2761618',4/4/2023),
('BP66034188','2801695',6/4/2023),
('BP64508912','2851140',15/5/2023);

CREATE TABLE state (
    invoices_id VARCHAR(50) PRIMARY KEY,
    customers_id VARCHAR(50) PRIMARY KEY,
    product_id VARCHAR(50) PRIMARY KEY,
    amount INT
);

INSERT INTO invoices (invoices_id, customers_id, product_id, amount) VALUES
('BP66026683', '30626708', 'A0147079', 1),
('BP66034188', '31054009', 'A0918702', 1),
('BP64508912', '40359987', 'C8094750', 2);