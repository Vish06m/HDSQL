select concat(firstname , lastname) as fullname 
from employees;

select * from employee;

select firstname, lastname,title 
from employee 
where employeeId > 2;

select concat(titleofCourtesy,firstname,lastname) as Fullname ,title
from employee ;

select firstname, lastname, employeeId
from employee 
where lastname = 'Sara';

select * from employee 
where employeeId is null;

select firstname||' '||lastname as Fullname,hireDate,city
from employee
where firstname not like "P%"
order by employeeId;

select * from employee 
where employeeId between 2 and 8 and birthDate < '1960-05-31 00:00:00' and title is not null and city not in ('seattle' , 'tacoma');

select * from employee 
where hireDate < '2003-01-01' ;

select * from employee 
where firstname like "[Fk]%" ;

