-- Question 1: INNER JOIN to combine employees and offices tables
-- Retrieves firstName, lastName, email, and officeCode for all employees
SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM 
    employees e
INNER JOIN 
    offices o
ON 
    e.officeCode = o.officeCode;

-- Question 2: LEFT JOIN to combine products and productlines tables
-- Retrieves productName, productVendor, and productLine from products table
SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM 
    products p
LEFT JOIN 
    productlines pl
ON 
    p.productLine = pl.productLine;

-- Question 3: RIGHT JOIN to combine customers and orders tables
-- Retrieves orderDate, shippedDate, status, and customerNumber for the first 10 orders
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM 
    customers c
RIGHT JOIN 
    orders o
ON 
    c.customerNumber = o.customerNumber
LIMIT 10;
