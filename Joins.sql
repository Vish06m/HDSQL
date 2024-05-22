select * from shipper;

select * from customer;

select * from orderdetail;

select distinct product.productName, orderdetail.unitPrice
from product
inner join orderdetail on product.productId = orderdetail.productId;

select distinct p.productName, o.unitPrice
from product p
inner join orderdetail o on p.productId = o.productId;

select * from supplier;

select c.contactName, c.address, s.city, s.email, c.country
from customer c
 join supplier s on c.contactName = s.contactName
order by s.city;

select c.contactName, c.address, c.country, s.companyName, s.contactTitle
from customer c
right join supplier s on c.contactName = s.contactName;

select customer.contactName, customer.address, supplier.city, supplier.email
from customer 
FULL JOIN supplier  on customer.contactName = supplier.contactName
order by  customer.contactName;

select supplierId, category.categoryName
from product
full join category on category.categoryId = categoryId
order by supplierId;