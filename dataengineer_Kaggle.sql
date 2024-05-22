-- create column of salary range with comment to know the salary details
select salary,
   (case
		when `salary` between "0" and "100000" then "Low"
        when `salary` between "100001" and "200000" then "Average"
        else "High"
    end) as salary_result
from salary;

alter table salary
add column salary_result varchar(500);

select * from salary;
-- ---------------------------------------- general ---------------------------------------------------------
-- show all unique title of data engineer
select distinct job_title from salary;

-- show all datas of data engineer
select * from salary;

-- show all unique employee residence
select distinct employee_residence from salary;

-- what is the salary of each job 
select job_title,salary from salary;

-- what is salary of distinct of job role
select distinct job_title, salary  from salary;

select * from salary;


/* How many unique company locations does the data have? */
select distinct company_location from salary;


/* What is the total salary got by location*/
select sum(salary) as total , company_location
from salary
group by company_location
order by total desc;

/* What is the total number of salary got by  company_location  */
select count(salary) as total , company_location
from salary
group by company_location
order by total desc;

/* Salary given in which most currency */
select  salary_currency, sum(salary) AS total_salary
from salary
group by salary_currency 
order by total_salary desc;

select * from salary;
-- how many employment type are there in data
select distinct employment_type from salary;

/* which job has employment */
select employment_type,job_title
from salary
order by job_title;

/* Which job has worked in which comoany size*/
select job_title, company_size
from salary
order by company_size;

/* How much medium comoany are there in data */
select company_size,count(*) as total 
from salary
where company_size = "M"
group by company_size;

/* How many unique company sizes are there? */
select distinct company_size from salary;

/* which company size has highest count */
select company_size,count(*) as total 
from salary
group by company_size;

/* What is the company location with unique jobs? */
select distinct job_title,company_location
from salary
order by job_title;

/* How many locations of company are there in data*/
select company_location, count(*)
from salary
group by company_location;

/*How many years are there in data */
select distinct work_year
from salary
order by work_year;

/*Which year got most number of salary*/
select  work_year, count(salary) as number_salary
from salary
group by work_year
order by number_salary;

/* Which year got total salary */
select  work_year, sum(salary) as total_salary
from salary
group by work_year
order by total_salary desc;

select * from salary; 

/* how much experience does got more salary*/
select experience_level, avg(salary_in_usd) as avg_salary
from salary
group by experience_level
order by avg_salary desc;

/* How much unique experience are working */
select experience_level, count(*) as total
from salary
group by experience_level
order by total desc;
-- ---------------------------- salary ---------------------------------

/* Total salary earned by Data Engineer*/
select job_title,sum(salary) as total_salary
from salary
where job_title = "Data Engineer"
group by job_title
order by total_salary;


/* Most number of job title */
select job_title,count(*) as total_jobs
from salary
group by job_title
order by total_jobs desc;

/* Which of the job title has highest  salary in usd*/
select job_title, sum(salary_in_usd) AS total_salary
from salary
group by job_title
order by total_salary;

select * from salary;

-- Which company_size has the salary?
select company_size,
 round(AVG(salary), 2) as highest_salary
from salary
group by company_size
order by highest_salary desc;

-- Which job type gets the most salary?
select job_title, avg(salary) as highest_salary
from salary
group by job_title
order by highest_salary desc;