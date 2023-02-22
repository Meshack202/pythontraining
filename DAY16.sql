# MySQL CONDITIONS AND JOINING OD TABLES
use pavemanacademy;
select * from studentrecords;

# MySQL CONDITIONS
#1. AND
select studentid, age, sex from studentrecords where Pstatus = 'A' AND traveltime >=3;

#2. OR
select studentid, age, sex from studentrecords where Pstatus = 'A' OR traveltime >=3;

#3. COMBINATION OF AND and OR
select studentid, age, sex from studentrecords where (Pstatus = 'A' AND traveltime >=3)
OR (Mjob = 'other');

select studentid, age, sex from studentrecords where (Pstatus = 'A' AND traveltime >=3)
AND (Mjob = 'other');

#4. NULL
select studentid, age, sex from studentrecords where Mjob is null;

#5. NOT NULL
select studentid, age, sex from studentrecords where Mjob is NOT null;

#6. IN
select studentid, age, sex from studentrecords where Mjob IN('other','teacher');

#7. between
select studentid, age, sex, g1 from studentrecords where g1 BETWEEN 10 AND 15;

#8. NOT BETWEEN
select studentid, age, sex, g1 from studentrecords where g1 NOT BETWEEN 10 AND 15;

create database HITMANTECHNOLOGY;
use HITMANTECHNOLOGY;
select * from EMPLOYEEDATA;
select distinct jobrole from employeedata;

# to create table containing all the jobrole as different tables

create table salesEXE select * from employeedata where jobrole = 'Sales executive';
create table RS select * from employeedata where jobrole = 'Research Scientist';
create table LT select * from employeedata where jobrole = 'Laboratory Technician';
create table MD select * from employeedata where jobrole = 'Manufacturing Director';
create table HCR select * from employeedata where jobrole = 'Healthcare Representative';
create table MGR select * from employeedata where jobrole = 'Manager';
create table SR select * from employeedata where jobrole = 'Sales Representative';
create table RD select * from employeedata where jobrole = 'Research Director';
create table HR select * from employeedata where jobrole = 'Human Resources';

#TO CREATE the same ID for all the tables

alter table employeedata add column Id int not null primary key auto_increment first;
alter table salesexe add column Id int not null primary key auto_increment first;
alter table  RS add column Id int not null primary key auto_increment first;
alter table LT add column Id int not null primary key auto_increment first;
alter table MD add column Id int not null primary key auto_increment first;
alter table HCR add column Id int not null primary key auto_increment first;
alter table MGR add column Id int not null primary key auto_increment first;
alter table SR add column Id int not null primary key auto_increment first;
alter table RD add column Id int not null primary key auto_increment first;
alter table HR add column Id int not null primary key auto_increment first;

select * from hr;
select * from hcr;

# inner join
select sr.Age, sr.Attrition, sr.DailyRate, rd.Gender, rd.HourlyRate, rd.JobInvolvement from sr inner join rd on sr.id = rd.id;

# RIGHT JOIN
select sr.Age, sr.Attrition, sr.DailyRate, rd.Gender, rd.HourlyRate, rd.JobInvolvement from sr RIGHT join rd on sr.id = rd.id;

# LEFT JOIN
select sr.Age, sr.Attrition, sr.DailyRate, rd.Gender, rd.HourlyRate, rd.JobInvolvement from sr LEFT join rd on sr.id = rd.id;

#CROSS JOIN
select sr.id, sr.Age, sr.Attrition, sr.DailyRate, rd.Gender, rd.HourlyRate, rd.JobInvolvement from sr CROSS join rd on sr.id = rd.id;

select * from employeedata;

#QUESTION 1. write a query to list the number of jobs available in the employee table
select jobrole,count(jobrole) from employeedata group by jobrole;

#QUESTION 2. write a query to get the total monthly income payable to employees
select sum(monthlyincome) from employeedata;

#QUESTION 3. write a query to get the minimum monthly income from employee table
select min(monthlyincome) from employeedata;
select max(monthlyincome) from employeedata;

#QUESTION 4. write a query to get the maximum monthly income of an employee working as a Research Scientist
select max(monthlyincome) from employeedata where jobrole = 'Research Scientist';

#QUESTION 5. write a query to get the average monthly income and number of employees working as Labortory Technician
select count('Laboratory Technician'), AVG(monthlyincome) from employeedata
where jobrole = 'Laboratory Technician';

#QUESTION 6. write a query to get the number of employees with the same job
select jobrole,count(jobrole) from employeedata group by jobrole;

#QUESTION 7. write a query to get the difference between the highest and lowest monthly income
select (max(monthlyincome) - min(monthlyincome)) from employeedata;

# 8. write a query to display the department, and salary for all employees whose monthly salary income 
# is not in the range 5000 and 7500
select Department, monthlyincome from employeedata where monthlyincome not between 5000 and 7500;

# 9. write a query to display department and job of the employees whose jobname has exactly 7 characters
select department, jobrole from employeedata where jobrole like '_______';

# 10. write a query to display the job of the employees having 's' as the third character
select jobrole from employeedata where jobrole like '__s%';


