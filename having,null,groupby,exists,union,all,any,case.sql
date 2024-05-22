select email  from employees
union 
select job_title from jobs;

select city from locations /*using union */
union
select salary from employees;

select city from customer /*using union with where condition*/
where country = 'India'
union 
select city from employee
where country = 'USA';

select city from customer /*using union all*/
where country = 'UK'
union all
select city from employee
where country = 'USA';

select count(employeeId), Country 
from employee
group by country ;

select count(supplierId) as Total_Supplier,country /*using groupby with order bu */
from supplier
group by country
order by country;

select count(supplierId) as Total_Supplier ,Country /*having function */
from supplier
group by country
having count(supplierId)<3
order by count(supplierId); 

select P.productName, count(o.orderid) as NumberOfOrders /*having with join function*/
from(orderdetail o inner join product P on O.productId = P.productId ) 
group by productName
Having count(O.orderID) > 20;

/* using exist operator*/
select productName 
from product 
where exists (select unitPrice from orderDetail where Orderdetail.productId = Product.productId);

select all unitPrice /*using all operator*/
from orderdetail
where unitPrice>10;

select * from orderdetail;

select unitPrice /*Using any operator*/
from orderdetail 
where productId = ANY (select productId from product where unitPrice > 10);

select unitPrice /*Using ALL operator*/
from orderdetail 
where productId = ALL (select productId from product where unitPrice =13);

select orderId, unitPrice, /*Case Example*/
case 
    when unitPrice >10 then 'The UnitPrice is high rate'
    when unitPrice < 10 then 'The UnitPrice is low rate'
    else 'unitPrice is 10 exact'
    End as Result
    from orderdetail;
select concat(firstname,lastname) as fullname , city, country
from employee                      /* using case in null value*/
order by 
(case 
    when city is null then country
	else city
    end
);    


     
select ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder)
from Product;

select job_title, max_salary % (max_salary + min_salary) as salary
from jobs;

select ProductName, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0))
from Product;
