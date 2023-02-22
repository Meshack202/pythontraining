use hitmantechnology;
select * from employeedata;

# to display the age distribution of the employeedata
select age, count(age) from employeedata group by age;

#job role distribution
select jobrole, count(jobrole) from employeedata group by jobrole;

# deparment distribution
select department, count(department) from employeedata group by department;
select distinct department from employeedata;

# limit selection to only 4
select * from employeedata limit 4;

# business travel distribution
select distinct businesstravel from employeedata;
select businesstravel, count(businesstravel) from employeedata group by businesstravel;

# department with minimum dailyrate
select department, min(dailyrate) from employeedata;
select min(dailyrate) from employeedata;

select department, min(dailyrate), max(dailyrate), avg(dailyrate), sum(dailyrate) from
employeedata where department = 'Sales';

select max(dailyrate) from employeedata;
select department, jobrole, dailyrate from employeedata where dailyrate != 950 order by dailyrate desc;

select department, jobrole, dailyrate from employeedata where jobrole like 'h__%' and dailyrate not between 1000 and 1100;

select * from employeedata;
select distinct employeenumber from employeedata order by employeenumber;
select department, jobrole, dailyrate, employeenumber as empnum from employeedatawhere educationfield in ('Medical') and (employeenumber between 46 and 49 or dailyrate > 1200);

select department, jobrole, employeenumber as empnum from employeedata where employeenumber between 46 and 49 and educationfield in ('Medical');
