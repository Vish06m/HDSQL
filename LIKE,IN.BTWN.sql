select * from customer;

select * from customer
where contactName like '%a%';

select * from customer
where contactName like '%a';

select * from customer
where contactName like 'V%';

select * from customer
where contactName like '%_as%';

select * from customer
where contactName like '_i%';

select * from customer
where contactName like 'V_shal_';

select * from customer
where city like 'B__n';

SELECT * FROM Customer
WHERE ContactName LIKE 'V%' OR ContactName LIKE 'R%';

SELECT * FROM Customer
WHERE ContactName LIKE 'V%' AND ContactName LIKE '%M';

SELECT * FROM Customer
WHERE City LIKE '[acs]%';

SELECT * FROM Customer
WHERE City LIKE '[!as]%';

SELECT * FROM Customer
WHERE City LIKE '[D___w_d]%';

SELECT * FROM Customer
WHERE City NOT LIKE 'M%';

SELECT contactName as customerName
from customer;

SELECT contactName  customerName
from customer;

SELECT productName AS "My Great Products"
FROM product;

SELECT CustID AS ID, ContactName AS Customer
FROM Customer;

SELECT ContactName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customer;

SELECT ContactName , CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customer;

SELECT c.contactName, p.productName
FROM customer AS c, product AS p
WHERE c.contactName = 'Grab a vehicle'  AND p.productID=c.contactName;

SELECT * FROM Customer
WHERE Country NOT IN ('Germany', 'France', 'UK');

SELECT * FROM Customer
WHERE Country IN ('Germany', 'France', 'UK');

SELECT * FROM Product
WHERE unitPrice BETWEEN 10 AND 20;

SELECT * FROM Product
WHERE unitPrice NOT BETWEEN 10 AND 20;

SELECT * FROM Product
WHERE unitPrice BETWEEN 10 AND 20
AND CategoryID IN (1,2,3);

SELECT * FROM Product
WHERE ProductName BETWEEN 'Product RECZE' AND 'Product LSOFL'
ORDER BY ProductName;