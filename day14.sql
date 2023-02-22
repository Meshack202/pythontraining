create database pavemanacademy;
use pavemanacademy;
alter table studentpor rename to studentrecords;

select * from studentrecords;

# to create a new column called studentID

alter table studentrecords add column studentID int not null auto_increment primary key first;
select * from studentrecords;

#where clause: used to get some specific data from the total table

select studentID,sex,age,address,famsize,traveltime from studentrecords where traveltime >= 3;
select studentID, sex, age, address, famsize, Pstatus, guardian from studentrecords where guardian = 'mother';

#distinct clause: used to retrieve distinct datas from the table

select distinct(age) from studentrecords;
select distinct age, traveltime from studentrecords;

#order. used to sort the columns in ascending or descending order
# ascending order

select studentID,sex,address from studentrecords order by age;
select studentid,sex,age,address,pstatus from studentrecords where pstatus = 'T' order by sex;

#descending order
select studentID,sex,address from studentrecords order by age desc;
select studentid,sex,age,address,pstatus from studentrecords where pstatus = 'T' order by sex desc;

#group by: can be used with aggregate date such as sum, diff, avg, max, min, count

select age, sum(G1) from studentrecords group by age;
select age,sum(G1) from studentrecords group by age order by age;

select age, max(G1) from studentrecords group by age order by age;
select age, min(G1) from studentrecords group by age order by age;

select age, avg(G2) from studentrecords group by age order by age;
select age, avg(G3) from studentrecords group by age order by age desc;

select age, count(G1) from studentrecords group by age order by age;
select age, count(G2) from studentrecords group by age order by age desc;

select age,traveltime,sum(G1) from studentrecords where traveltime >=3 group by age order by age;

select * from studentrecords;

#CONTROL FLOW PROGRAM
# IF
select studentid,sex,age,address, G1, if(G1 >=15, 'YES', 'NO') as outcome from studentrecords;

select studentid,sex,age,address, count(g1) from studentrecords where g1>=15 group by studentid;

# ifnull: return null if both are empty or return value of second column if first column is empty or return value of first if both are not empty
select studentid, sex, age, address, ifnull(Mjob, Fjob) as result from studentrecords;

#nullif: returns the value of the first column if both columns are different or return null if both columns are the same
select studentid, sex, age, address, Mjob, Fjob, nullif(Mjob, Fjob) as result from studentrecords;

 
 
