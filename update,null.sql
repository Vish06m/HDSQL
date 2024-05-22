select * from customer;

select contactName,contactTitle from customer
where address is NULL; 

select contactName,contactTitle from customer
where address is not NULL; 

update customer
set contactName = "VishalM" , city = "Dharwad"
where custID = 1;

update customer
set contactName = "VishalM" , city = "Dharwad", country="India"
where custID = 1;

update customer
set contactTitle="Owner", address="14th Navodaya Nagar", region="Karnataka",postalCode="580003"
where custID = 1; 

UPDATE customer 
SET contactName = 'JimMartin'
WHERE country = 'Germany';

update customer
set contactName = 'Vishal'
where city = "London";

delete from customer;

delete from customer 
where custID = 1;

select contactName from customer
limit 3 ;

SELECT contactName
FROM customer
ORDER BY contactName;

SELECT * FROM Customer
WHERE Country='Germany'
LIMIT 3;

SELECT * FROM Customer
ORDER BY ContactName DESC
LIMIT 3;

SELECT MIN(unitPrice)
FROM Product;

SELECT Max(unitPrice)
FROM Product;

SELECT avg(unitPrice)
FROM Product;

SELECT Max(unitPrice) as MaximunPrice
FROM Product;

SELECT MIN(unitPrice) AS SmallestPrice, CategoryID
FROM Product
GROUP BY CategoryID;

SELECT count(*)
FROM product;

SELECT count(*)
FROM customer;

SELECT Count(custID)
FROM customer
where custID>10;