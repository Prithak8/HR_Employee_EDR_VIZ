# HR_Employee_EDR_VIZ


## This is a MYSQL and Power BI project designated to answer important question for Humnan Resource person about the company Employees.


### Softwares used:

Data Cleaning and Queries: MYSQL
Data Visualization: PowerBI


## DataSet Information:


![image](https://github.com/Prithak8/HR_Employee_EDR_VIZ/assets/109690999/441280b6-4b3a-4e74-8440-22be9b176900)


### Number of Rows: Over 22000


## EDA Questions:



1.	What is the gender breakdown of employees in the company?

2.	What is the race/ethnicity breakdown of employees in the company?

3.	What is the age distribution of employees in the company?

4.	How many employees work at headquarters versus remote locations?

5.	What is the average length of employment for employees who have been terminated?

6.	How does the gender distribution vary across departments and job titles?

7.	What is the distribution of job titles across the company?

8.	Which department has the highest turnover rate?

9.	What is the distribution of employees across locations by state?

10.	How has the company's employee count changed over time based on hire and term dates?

11.	What is the tenure distribution for each department?



## SQL Outputs


1.	What is the gender breakdown of employees in the company?

![image](https://github.com/Prithak8/HR_Employee_EDR_VIZ/assets/109690999/07177588-38d2-41e7-b067-718e66aa4bd0)


2.	What is the race/ethnicity breakdown of employees in the company?

![image](https://github.com/Prithak8/HR_Employee_EDR_VIZ/assets/109690999/8aeb09e9-3b69-45bb-a107-3081b5a054b6)


3.	What is the age distribution of employees in the company?

![image](https://github.com/Prithak8/HR_Employee_EDR_VIZ/assets/109690999/c2bfa88b-ffae-490d-a0da-4d4098f041d8)


4.	How many employees work at headquarters versus remote locations?

![image](https://github.com/Prithak8/HR_Employee_EDR_VIZ/assets/109690999/b65b1ad3-9d5e-4df2-b077-e8260a15d1b5)


5.	What is the average length of employment for employees who have been terminated?

![image](https://github.com/Prithak8/HR_Employee_EDR_VIZ/assets/109690999/b2a47a85-4af9-4da4-a989-3762d0d33e7b)

6.	How does the gender distribution vary across departments and job titles?

![image](https://github.com/Prithak8/HR_Employee_EDR_VIZ/assets/109690999/f62c2039-a2ca-45ad-8c7d-033ae796da46)
![image](https://github.com/Prithak8/HR_Employee_EDR_VIZ/assets/109690999/69695fea-1bd2-41f6-af86-e3b61a29deb3)

7.	What is the distribution of job titles across the company?

![image](https://github.com/Prithak8/HR_Employee_EDR_VIZ/assets/109690999/a6cc911e-abbe-4f21-88f2-3e659d327706)

and so on...

8.	Which department has the highest turnover rate?

![image](https://github.com/Prithak8/HR_Employee_EDR_VIZ/assets/109690999/6b81202e-7c9e-4f9b-b3d4-cf65a5f9834c)



9.	What is the distribution of employees across locations by state?

![image](https://github.com/Prithak8/HR_Employee_EDR_VIZ/assets/109690999/1f19b19f-6e62-40be-854d-a125566a8428)

10.	How has the company's employee count changed over time based on hire and term dates?

![image](https://github.com/Prithak8/HR_Employee_EDR_VIZ/assets/109690999/7e3527e9-58b0-4b48-ac4b-c1d62a2cad09)


11.	What is the tenure distribution for each department?

![image](https://github.com/Prithak8/HR_Employee_EDR_VIZ/assets/109690999/f3e293e1-4658-4aee-8e33-7b668d643997)





## Insights


•	Male employees outnumber female employees.

•	The White race is predominant, while Native Hawaiian and American Indian races are the least represented.

•	The age range of employees spans from 20 to 57 years old, with the youngest being 20 and the oldest 57.

•	Employees are grouped into five age categories: 18-24, 25-34, 35-44, 45-54, and 55-64. The largest age group is 25-34, followed by 35-44, with the smallest being 55-64.

•	A significant portion of employees work at the headquarters rather than remotely.

•	Terminated employees have an average employment tenure of approximately 7 years.

•	Gender distribution among departments is relatively balanced, though male employees generally outnumber female employees.

•	The Marketing department experiences the highest turnover rate, followed by Training. Conversely, Research and Development, Support, and Legal departments have the lowest turnover rates.

•	A considerable number of employees hail from the state of Ohio.

•	The net change in employee numbers has increased over time.

•	The average tenure within each department is approximately 8 years, with Legal and Auditing departments having the highest, and Services, Sales, and Marketing departments having the lowest.




Note: While doing this project there were some ambiguous data such as ages being in negative. In order to tackle this problem every query has been written such that the age of the employee is over 18 years
One can completely truncate the date tuples with ambiguous or impossible data but the author took care of it in the queries itself.



