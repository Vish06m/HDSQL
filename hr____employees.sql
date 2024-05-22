select * from employees;

select concat(first_name , last_name) as fullname 
from employees;

select first_name, last_name,employee_id,salary
from employees
where salary < 6000;

select first_name, last_name,employee_id,salary
from employees
where salary >8000
order by employee_id;

select concat(first_name,last_name) as Fullname, employee_id
from employees 
where last_name = "McEwen" ;

select first_name,last_name, employee_id,salary
from employees 
where last_name = "McEwen" ;

select*from departments;

select * from employees 
where department_id is not null;

select * from employees 
where department_id is  null;

select*from departments
where department_name = "marketing" ;

Select concat(first_name ,last_name) as Full_Name, hire_date, salary, department_id
from employees 
where first_name not like '%M%'  
order by department_id;

select * from employees
where salary between 8000 and 12000 and commission_pct IS NOT NULL or department_id NOT IN (40 , 120 , 70) and hire_date < '2003-06-05';

select concat(first_name,last_name) as Fullname, salary 
from employees
where commission_pct is not null;


select concat(first_name,last_name) as Fullname, phone_number, salary
from employees
where salary between 9000 and 17000;

select concat(first_name,last_name) as Fullname, salary 
from employees
where first_name like "%m";

select concat(first_name,last_name) as Fullname, salary from employees
where salary not between 8000 and 12000
order by Fullname; 


select concat(first_name,last_name) as Fullname, job_Id, hire_date from employees
where hire_date between '2007-11-05' and '2009-07-05';

select concat(first_name,last_name) as Fullname, department_id FROM employees 
WHERE department_id = 70 or department_id = 90;

select concat(first_name,last_name) as Fullname, salary, manager_id 
from employees
where manager_id is Not Null;

select * from employees 
where hire_date < '2002-06-21';

select first_name, last_name, email, salary, manager_id from employees 
where manager_id in (120 , 103 , 145);

select * from employees where first_name like '%D%' or first_name like '%S%' or first_name like '%N%' 
order by salary desc;

select concat(first_name,last_name) as Fullname, hire_date, commission_pct, concat(email,phone_number) as Contact_Details, salary 
from employees where salary > 11000  or phone_number like '______3%' 
order by first_name desc;


select first_name,last_name, department_id 
from employees 
where first_name like '__s%';

select employee_id, first_name, job_id, department_id 
from employees 
where department_id not in (50, 30, 80);

select employee_id, first_name, job_id, department_id 
from employees 
where department_id in (30 , 40 , 90);

select employee_id 
from job_history 
group by employee_id having COUNT(*) >=2;

select job_id, COUNT(*), SUM(salary), MAX(salary)-MIN(salary) as salary_difference 
from employees 
group by job_id;

select country_id,  COUNT(*) 
from locations 
group by country_id;

select  manager_id, COUNT(*) 
from employees 
group by manager_id;

select * from jobs 
order by job_title desc;

select first_name, last_name, hire_date 
from employees 
where job_id in ('SA_REP', 'SA_MAN');

select department_id, avg(salary) 
from employees where commission_pct is not null 
group by department_id;

select distinct department_id 
from employees 
group by department_id, manager_id 
having COUNT(employee_id) >=4;

select department_id 
from employees 
where commission_pct is not null	
group by department_id having COUNT(commission_pct)>10;

select employee_id , MAX(end_date) 
from job_history 
where employee_id in (select employee_id from job_history group by 1 having COUNT(employee_id) > 1) 
group by 1;		

select * from employees where commission_pct is null and salary between 7000 and 12000 and department_id=50;

select job_id, Avg(salary) 
from employees 
group by job_id 
having avg(salary)>8000;

select job_title, max_salary-min_salary as salary_differences 
from jobs 
where max_salary between 12000 and 18000;

select first_name, last_name 
from employees 
where  first_name  like 'D%' or last_name like 'D%';

select * from jobs
where min_salary > 9000;

select * from employees  where hire_date > '1987-09-07';