USE PROJECTS
GO 



/* ORDER BY (Ascending)
1. Retrieve all records from the attrition table ordered by age in ascending order.*/
SELECT * 
FROM [Attrition Dataset]
ORDER BY Age asc;

/*2. Display the attrition table, ordering the data alphabetically by department in ascending order.*/
SELECT * 
FROM [Attrition Dataset]
ORDER BY Department asc;

/*3. Show the attrition table sorted by the number of years at the company in ascending order.*/
SELECT * 
FROM [Attrition Dataset]
ORDER BY YearsAtCompany asc;

/* ORDER BY (Descending)
1. Retrieve all records from the attrition table ordered by age in descending order.*/
SELECT * 
FROM [Attrition Dataset]
ORDER BY Age desc;


/* 2. Display the attrition table, ordering the data alphabetically by department in descending order.*/
SELECT * 
FROM [Attrition Dataset]
ORDER BY Department desc;

/*3. Show the attrition table sorted by the number of years at the company in descending order.*/
SELECT * 
FROM [Attrition Dataset]
ORDER BY YearsAtCompany desc;

/* SUM
1. Calculate the total number of years at the company for all employees.*/
SELECT SUM(YearsAtcompany) AS Total_Years_at_Company
FROM [Attrition Dataset];

/*2. Find the sum of the number of companies worked at by all companies.*/
SELECT SUM(NumCompaniesWorked) AS Number_of_Company_previously_worked
FROM [Attrition Dataset];

/*3. Calculate the total age of all employees in the attrition table.*/
SELECT SUM(Age) AS Total_age
FROM [Attrition Dataset];

/*4. Find the total number of attritions (yes) in the table.*/

SELECT COUNT (Attrition) AS Total_attritions
FROM [Attrition Dataset]
WHERE Attrition = 'Yes';


/*5. Calculate the sum of years at the company for employees from the medical education field.*/
SELECT SUM(YearsAtcompany) AS Total_Years_at_Company_Medical
FROM [Attrition Dataset]
WHERE EducationField = 'Medical';

/*AVG
1. Calculate the average age of employees in the attrition table. */
SELECT round(Avg(Age),0) AS Avg_Age
FROM [Attrition Dataset];


/*2. Find the average number of years worked at the company for all employees.*/
SELECT ROUND(Avg(YearsAtCompany),0) AS Avg_Year_AtCompany
FROM [Attrition Dataset];

/*3. Calculate the average number of companies worked at by employees.*/
SELECT ROUND(Avg(NumCompaniesWorked),0) AS Avg_CompaniesWorked
FROM [Attrition Dataset];

/*4. Find the average age of employees in the research and development department.*/
SELECT ROUND(Avg(Age),0) AS Avg_Age_in_RandD
FROM [Attrition Dataset]
WHERE Department = 'Research & Development';

/*5. Calculate the average number of years at the company for male employees.*/
SELECT ROUND(Avg(YearsAtCompany),0) AS Avg_YearsAtCompany_male
FROM [Attrition Dataset]
WHERE Gender ='Male' ;

/*6. Find the average age of employees from the life sciences education field.*/
SELECT ROUND(Avg(Age),0) AS Avg_Lifescience_Age
FROM [Attrition Dataset]
WHERE EducationField = 'Life Sciences' ;

/*COUNT
1. Count the number of employees in the attrition table.*/
SELECT COUNT(*) AS Total_employees
FROM [Attrition Dataset];

/*2. Find the count of attrition in the table.*/
SELECT Attrition, COUNT(*)  AS Total_attrition
FROM [Attrition Dataset]
GROUP BY Attrition ;

/*3. Count the number of employees in each department.*/
SELECT Department ,COUNT(*) AS Total_employees
FROM [Attrition Dataset]
GROUP BY Department;

/*4. Find the count of employees from the marketing education field.*/
SELECT COUNT(*) AS Employee_in_marketing
FROM [Attrition Dataset]
WHERE EducationField = 'Marketing';

/*5. Count the number of employees who are married.*/
SELECT COUNT(*) AS Married_employee
FROM [Attrition Dataset]
WHERE MaritalStatus ='Married' ;
/*MIN
1. Find the minimum age among all employees in the attrition table.*/
SELECT MIN(Age) AS Minimum_Age
FROM [Attrition Dataset];

/*2. Find the minimum number of years at the company among all employees.*/
SELECT MIN(YearsAtCompany) AS minimum_YearsAtCompany
FROM [Attrition Dataset];

/*3. Find the minimum age of employees in the human resources department.*/
SELECT MIN(Age) AS Minimum_Age_of_HR
FROM [Attrition Dataset]
WHERE Department = 'Human Resources' ;
/*MAX
1. Find the maximum age among all employees in the attrition table.*/
SELECT MAX(Age) AS Maximum_Age
FROM [Attrition Dataset];

/*2. Find the maximum number of years at the company among all employees.*/
SELECT MAX(YearsAtCompany) AS Maximum_YearsAtCompany
FROM [Attrition Dataset];

/*3. Find the maximum age of employees in the human resources department.*/
SELECT Max(Age) AS Maximum_Age_of_HR
FROM [Attrition Dataset]
WHERE Department = 'Human Resources' ;

/*4. Find the most recent year of joining the company among all employees. */
SELECT MIN(YearsAtCompany) AS Recent_Year 
FROM [Attrition Dataset];

