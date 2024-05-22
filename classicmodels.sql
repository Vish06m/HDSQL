select * from offices;
select country, state, city  from offices;

select * from employees;

select employeeNumber,COUNT(*) from employees
group by employeeNumber;

select * from payments;

select sum(amount) from payments;

select * from productlines;

select * from products;

select productLine,Count(*)   from products 
where productLine = "Classic Cars" or productLine = "Vintage Cars"
Group by productLine;

select sum(amount),paymentDate from payments
where paymentDate <='2004-10-28'
group by  paymentDate;

select * from payments
order by paymentDate;

select customerNumber, paymentDate,amount from payments
where amount>100000;

select * from productLines;

select customerNumber,min(amount) from payments
group by customerNumber;

select min(amount), paymentDate from payments;

select amount from payments;

select paymentDate, avg(amount) from payments
group by paymentDate
having avg(amount) * 2;

select avg(amount) from payments 
where amount > (select avg(amount) * 2 from payments) ;

select  * from products;

select buyPrice from products
where buyPrice > (select avg(MSRP) * 100 / max(MSRP) from products);
 
select distinct * from products;

select distinct productName,productLine from products;

select customerName, city  from customers 
where salesRepEmployeeNumber is Null;

select customerName, city  from customers 
where salesRepEmployeeNumber is not Null;
select * from customers;

select  * from offices;
select * from Employees;

select concat(firstName, lastName) as fullname from employees;

select concat(firstName, lastName) as fullname from employees
where jobTitle like '%VP%' or '%Manager%' ;

select  * from orders;
select * from orderdetails;

select orderNumber, productCode from orderdetails
where priceEach = (quantityOrdered * priceEach) ;

select * from customers;

select customerNumber,paymentDate,sum(amount) as Total from payments
where customerNumber='103' 
group by paymentDate;

select customerNumber,paymentDate,sum(amount) as Total from payments
where customerNumber='103' 
group by paymentDate;

select customerName from customers
where contactFirstName = 'date';

select * from employees;

select *  from orders;

select * from products
where productName Like '%Ford%' ;

select * from products
where productName Like '%ship' ;

select * from customers
where country='Denmark' or  country='Norway' or  country='Sweden';

select * from products
where productCode  between 'S700_1000' and 'S700_1499';

select * from customers
where customerName like '%digit%';

select concat(firstName,lastName) as Full_Name from employees
where firstName like '%Dianne%' or lastName like '%Diane%';

select * from products
where productName Like '%ship' or productName Like '%boat%' ;

select * from products
where productCode Like 'S700%';

select * from employees
where firstName like '%Larry%' or firstName like '%Barry%';

select * from employees
where firstName like '%123456789@#$%^%';

