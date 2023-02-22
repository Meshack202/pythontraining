use hitmantechnology;
select * from hr_analytics;

# QUESTION 1. What is the distribution of ages among employees in each department?
select department, count(age) from hr_analytics group by department;

# QUESTION 2. What is the average monthly income of employees based on their job role and job level?
select jobrole,joblevel, avg(monthlyincome) from hr_analytics group by jobrole;
select joblevel, avg(monthlyincome) from hr_analytics group by joblevel;

# QUESTION 3. What is the average work life balance of employees in each department?
select department, avg(worklifebalance) from hr_analytics group by department;

# QUESTION 4. What is the average environment satisfaction of employees based on their job role?
select jobrole, avg(environmentsatisfaction) from hr_analytics group by jobrole;

# QUESTION 5. How does the years at company vary among employees in each job role and job level?
select jobrole, count(yearsatcompany) from hr_analytics group by jobrole;
select joblevel, count(yearsatcompany) from hr_analytics group by joblevel order by joblevel;

# QUESTION 6. What is the average job satisfaction of employees based on their marital status?
select maritalstatus, avg(jobsatisfaction) from hr_analytics group by maritalstatus;

select * from hr_analytics;
# QUESTION 7. How does the relationship satisfaction of employees vary based on their job role and job level?
select jobrole, count(relationshipsatisfaction) from hr_analytics group by jobrole;
select joblevel, count(relationshipsatisfaction) from hr_analytics group by joblevel;

# QUESTION 8. What is the distribution of employee count in each department?
select department, count(department) from hr_analytics group by department;

# QUESTION 9. How does the standard hours vary based on job role and job level?
SELECT jobrole, count(standardhours) from hr_analytics group by jobrole;
SELECT joblevel, count(standardhours) from hr_analytics group by joblevel;

# QUESTION 10. What is the average job involvement of employees based on their gender?
SELECT gender, avg(jobinvolvement) from hr_analytics group by gender;

# QUESTION 11. How does the average hourly rate of employees vary based on their job role and job level?
SELECT jobrole, avg(hourlyrate) from hr_analytics group by jobrole;
SELECT joblevel, avg(hourlyrate) from hr_analytics group by joblevel;

# QUESTION 12. What is the average distance from home of employees based on their job role and job level?
SELECT jobrole, avg(distancefromhome) from hr_analytics group by jobrole;
SELECT joblevel, avg(distancefromhome) from hr_analytics group by joblevel;

# 	QUESTION 13. How does the average stock option level of employees vary based on their job role and job level?
SELECT jobrole, avg(stockoptionlevel) from hr_analytics group by jobrole;
SELECT joblevel, avg(stockoptionlevel) from hr_analytics group by joblevel;
 
 # QUESTION 14. What is the average training times last year of employees based on their job role and job level?
 SELECT jobrole, avg(trainingtimeslastyear) from hr_analytics group by jobrole;
 SELECT joblevel, avg(trainingtimeslastyear) from hr_analytics group by joblevel;
 
 # QUESTION 15. How does the average total working years of employees vary based on their job role and job level?
 SELECT jobrole, avg(totalworkingyears) from hr_analytics group by jobrole;
SELECT joblevel, avg(TotalWorkingYears) from hr_analytics group by joblevel;

# QUESTION 16. What is the average years since last promotion of employees based on their job role and job level?
SELECT jobrole, avg(YearsSinceLastPromotion) from hr_analytics group by jobrole;
SELECT joblevel, avg(YearsSinceLastPromotion) from hr_analytics group by joblevel;