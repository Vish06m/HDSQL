Select * From region;
Select * From product;

Select ProductName, quantityperunit from product;

Select productName, productId from product
where discontinued = "False"
order by productName;


Select productName, productId from product
where discontinued = 1
order by productName;

Select productName, unitPrice from product
order by unitPrice desc;

Select productName,ProductId,unitPrice from product
where (((unitPrice)<20) AND ((Discontinued)="False"))
order by unitPrice desc;

Select productName,ProductId,unitPrice from product
where unitPrice between 15 and 25
order by unitPrice desc;

Select Distinct productName,unitPrice from product
where unitPrice > (select avg(unitprice) from product)
order by unitPrice;

Select Distinct productName,unitPrice from product as a
where 10 >= (select count(distinct unitPrice) from product as b 
             where b.unitPrice >= a.unitPrice)
order by unitPrice desc;

select count(productName) from product
group by discontinued ;	

select productName,unitsInStock,unitsOnOrder from product
where (((discontinued) = "False")  AND  ((unitsInStock)<(unitsOnOrder)));

select * from product;
