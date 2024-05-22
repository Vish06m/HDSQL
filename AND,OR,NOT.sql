select * From product;

select * from customer;

select * from customer
where country = "Germany" or country = "USA" ;

select * from customer
where not contactTitle like 'Owner'
order by companyName;

select * from customer
where country = "USA" AND (contactTitle="Owner" OR contactTitle = "Sales Representative");

select * from product;

select * from product
where unitPrice  not between 20 and 30
order by productName;

select * from product
where not unitPrice > 20;

select * from customer
where contactName not like 'A%';

select * from customer
where country  in ("USA","UK");

select * from customer
where not(country="UK" or country="Germany") and country = "USA";