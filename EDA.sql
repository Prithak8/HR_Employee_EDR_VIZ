use human_resources;


-- Questions

-- What is the gender breakdown of employees in the company?


SELECT GENDER,COUNT(*) AS NUMBER
FROM HR
WHERE AGE>=18 AND TERMDATE=0000-00-00
GROUP BY GENDER;

-- What is the race/ethnicity breakdown of employees in the company?

SELECT RACE, COUNT(*) AS NUMBER
FROM HR
WHERE AGE>=18 AND TERMDATE=0000-00-00
GROUP BY RACE
ORDER BY NUMBER DESC;

-- What is the age distribution of employees in the company?

SELECT MIN(AGE) AS YOUNGEST, MAX(AGE) AS OLDEST
FROM HR
WHERE AGE>=18 AND TERMDATE=0000-00-00;

SELECT 
CASE
	WHEN AGE>=18 AND AGE<=24 THEN '18-24'
    WHEN AGE>=25 AND AGE<=31 THEN '25-31'
    WHEN AGE>=32 AND AGE<=38 THEN '32-38'
    WHEN AGE>=39 AND AGE<=45 THEN '39-45'
    WHEN AGE>=46 AND AGE<=52 THEN '46-52'
    WHEN AGE>=53 AND AGE<=60 THEN '53-60'
    ELSE 'Above 60'
    
END AS AGE_RANGE,
count(*) as count
from hr
WHERE AGE>18 AND TERMDATE=0000-00-00
GROUP BY AGE_RANGE
ORDER BY AGE_RANGE;



SELECT 
CASE
	WHEN AGE>=18 AND AGE<=24 THEN '18-24'
    WHEN AGE>=25 AND AGE<=31 THEN '25-31'
    WHEN AGE>=32 AND AGE<=38 THEN '32-38'
    WHEN AGE>=39 AND AGE<=45 THEN '39-45'
    WHEN AGE>=46 AND AGE<=52 THEN '46-52'
    WHEN AGE>=53 AND AGE<=60 THEN '53-60'
    ELSE 'Above 60'
    
END AS AGE_RANGE,GENDER,
count(*) as count
from hr
WHERE AGE>18 AND TERMDATE=0000-00-00
GROUP BY AGE_RANGE,GENDER
ORDER BY AGE_RANGE;

-- How many employees work at headquarters versus remote locations?

SELECT LOCATION,COUNT(*) AS COUNT
FROM HR
WHERE AGE>=18 AND TERMDATE=0000-00-00
GROUP BY LOCATION;


-- What is the average length of employment for employees who have
-- been terminated?

SELECT ROUND(AVG(TIMESTAMPDIFF(YEAR,HIRE_DATE,TERMDATE)),0) AS AVG_LENGTH_OF_EMPLOYEEMENT
FROM HR
WHERE AGE>=18 AND TERMDATE!=0000-00-00 AND TERMDATE<=CURDATE();



-- How does the gender distribution vary across departments?


SELECT DEPARTMENT,GENDER,COUNT(*) AS NUMBER
FROM HR
WHERE AGE>=18 AND TERMDATE=0000-00-00
GROUP BY DEPARTMENT,GENDER
ORDER BY DEPARTMENT,GENDER;


-- What is the distribution of job titles across the company?

SELECT JOBTITLE,COUNT(*) AS NUMBER
FROM HR
WHERE AGE>=18 AND TERMDATE=0000-00-00
GROUP BY JOBTITLE
ORDER BY JOBTITLE DESC;

-- Which department has the highest turnover rate?

# rate of employee leaving the company

SELECT FIN.DEPARTMENT,((FIN.NOT_IN_COMPANY/FIN.IN_COMPANY)*100) AS TURNOVER_RATE
FROM(

SELECT T1.DEPARTMENT,T1.COUNT1 AS NOT_IN_COMPANY,T2.COUNT2 AS IN_COMPANY
FROM
(
SELECT DEPARTMENT, COUNT(*) AS COUNT1
FROM HR
WHERE AGE>=18 AND TERMDATE!=0000-00-00 AND TERMDATE<=curdate()
GROUP BY DEPARTMENT) AS T1
JOIN(

SELECT DEPARTMENT, COUNT(*) AS COUNT2
FROM HR
WHERE AGE>=18 AND TERMDATE=0000-00-00
GROUP BY DEPARTMENT) AS T2
ON T1.DEPARTMENT=T2.DEPARTMENT) AS FIN
ORDER BY TURNOVER_RATE DESC;

-- What is the distribution of employees across locations by state?

SELECT LOCATION_STATE, COUNT(*) AS COUNT
FROM HR
WHERE AGE>=18 AND TERMDATE=0000-00-00
GROUP BY LOCATION_STATE
ORDER BY COUNT DESC;


-- How has the companys employee count changed over time based on hire
-- and term dates?

SELECT 
YEAR,
HIRES,
TERMINATIONS,
HIRES-TERMINATIONS AS NET_CHANGE,
ROUND((HIRES-TERMINATIONS)/HIRES*100,2) AS NET_CHANGE_PERCENT

    FROM
    
	(SELECT YEAR(HIRE_DATE) AS YEAR,
    COUNT(*) AS HIRES,
    SUM(CASE WHEN TERMDATE<>0000-00-00 AND TERMDATE<=CURDATE() THEN 1 ELSE 0 END) AS TERMINATIONS
    FROM HR
    WHERE AGE>=18
    GROUP BY YEAR(HIRE_DATE)
    ) AS SUBQUERY
    ORDER BY YEAR ASC;


-- What is the tenure distribution for each department?


SELECT DEPARTMENT,ROUND(AVG(TIMESTAMPDIFF(YEAR,HIRE_DATE,TERMDATE)),0) AS EMP_STAY
FROM HR
WHERE AGE>=18 AND TERMDATE!=0000-00-00 AND TERMDATE<=CURDATE()
GROUP BY DEPARTMENT
ORDER BY EMP_STAY DESC;
