select E.first_name, E.last_name, E.department_id, D.department_name 
from employees E
inner join departments D on E.department_id = D.department_id;

select E.first_name, E.last_name, D.department_name, L.city, L.state_province
from employees E, departments D, locations L
where E.department_id = D.department_id 
and D.location_id = L.location_id;

select E.first_name, E.last_name, D.department_name, L.city, L.state_province
from employees E
join departments D on E.department_id = D.department_id
join locations L on D.location_id = L.location_id;

select E.first_name, E.last_name, E.salary, J.job_title, J.job_title 
from employees E 
join jobs J on E.salary between J.min_salary and J.max_salary;

select * from jobs;

select * from locations;

select E.first_name, E.last_name, E.department_id, D.department_name 
from employees E 
join departments D on E.department_id = D.department_id 
and E.department_id in (80, 40)
order by E.last_name;

select E.first_name, E.last_name, E.department_id, D.department_name 
from employees E join departments D on E.department_id = D.department_id 
order by E.last_name;

select E.first_name, E.last_name, D.department_name, L.city, L.state_province
from employees E
join departments D on E.department_id = D.department_id
join locations L on D.location_id = L.location_id
where E.first_name like "%z%";

