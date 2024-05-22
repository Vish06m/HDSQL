create database cricket;

create table batsman(
id int,
batid int primary key, /*using primary key*/
firstname varchar(200),
lastname varchar(200),
city varchar(200),
totalruns int not null,
bestscore int not null,
country varchar(200) default 'India'
);

select * from batsman;

alter table batsman 
add age int ;  /*using alter table*/

drop table batsman; /*using drop table*/
drop table bowler;

create table bowler(
id int,
bowlid int primary key not null auto_increment,
firstname varchar(200) not null, 
lastname varchar(200) ,
city varchar(200),
totalwickets int,
bestspell int,
country varchar(200),
age int, check (age > 14)  /* using check */
);

create table playerstats(
id int,
innings int,
totalruns int,
bestscore int,
totalwickets int,
bestspell int,
city varchar(300) default 'Dharwad'
);
drop table playerstats;
/*using insert into*/

insert into batsman (batid, firstname, lastname, city, country,totalruns, bestscore) 
values 
( 1001 , "Rohit", "Sharma" , "Nagpur", "India", "18655", "264"),
( 1002 , "Virat", "Kohli" , "Delhi", "India", "24862", "183"),
( 1003 , "David", "Warner" , "Perth", "Australia", "16585", "155"),
( 1004 , "Ab de", "Villers" , "Cape town", "South Africa", "12666", "179"),
( 1005 , "Bredom", "Mcculum" , "Auckland", "New Zealand", "15644", "165"),
( 1006 , "MS", "Dhoni" , "Ranchi", "India", "14989", "183"),
( 1007 , "Joe", "Root" , "London", "Uk", "11889", "175"),
( 1008 , "Kane", "Williamson" , "Wellington", "New Zealand", "12589", "203"),
( 1009 , "Babar", "Azam" , "Lahore", "Pakistan", "9655", "145"),
( 1010 , "Steve", "Smith" , "Sydney", "Australia", "10655", "184"),
( 1011 , "Chris", "Gayle" , "Barbodos", "WestIndies", "14589", "217"),
( 1012 , "Ben", "Stokes" , "Manchestor", "Uk", "8655", "144"),
( 1013 , "KL", "Rahul" , "Mangalore", "India", "8560", "199"),
( 1014 , "Shaakib", "Hasan" , "Dhaka", "Bangladesh", "1655", "164"),
( 1015 , "Angilo", "Mathews" , "Colombo"," ",  "14555", "194") ;

select * from batsman;

delete from batsman where batid = '1001';

insert into bowler (bowlid, firstname, lastname, city, country,totalwickets, bestspell) 
values 
( 1001 , "Jasprit", "Bumrah" , "Chandigarh", "India", "456", "5"),
( 1002 , "Dale", "Styne" , "", "South Africa", "969", "9"),
( 1003 , "David", "Warner" , "Perth", "Australia", "16585", "155"),
( 1004 , "Ab de", "Villers" , "Cape town", "South Africa", "12666", "179"),
( 1005 , "Bredom", "Mcculum" , "Auckland", "New Zealand", "15644", "165"),
( 1006 , "MS", "Dhoni" , "Ranchi", "India", "14989", "183"),
( 1007 , "Joe", "Root" , "London", "Uk", "11889", "175"),
( 1008 , "Kane", "Williamson" , "Wellington", "New Zealand", "12589", "203"),
( 1009 , "Babar", "Azam" , "Lahore", "Pakistan", "9655", "145"),
( 1010 , "Steve", "Smith" , "Sydney", "Australia", "10655", "184"),
( 1011 , "Chris", "Gayle" , "Barbodos", "WestIndies", "14589", "217"),
( 1012 , "Ben", "Stokes" , "Manchestor", "Uk", "8655", "144"),
( 1013 , "KL", "Rahul" , "Mangalore", "India", "8560", "199"),
( 1014 , "Shaakib", "Hasan" , "Dhaka", "Bangladesh", "1655", "164"),
( 1015 , "Angilo", "Mathews" , "Colombo","",  "14555", "194") ;

select * from playerstats;

create index indx_fullname
on batsman(firstname, lastname);

insert into playerstats (innings, totalruns , bestscore, totalwickets, bestspell)
values ( "54" , "50000", "455", "5000", "5") ; /* checking default value */

alter table batsman 
drop index Vishal;

select indx_fullname from batsman;

create index idx_lastname
on bowler (lastname);

