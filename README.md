# Pewlett-Hackard-Analysis
Performing a company-wide anaysis over employee data to determine retirement and mentorship eligibility by utilizing *PostgreSQL* to transform and query data.

### Resources
- Python 
  - Jupyter Notebook
- PostgreSQL 
  - pgAdmin

## Overview
Pewlett Hackard is reviewing staffing metrics in order to find who may be or is eligible for retirement. Then the retirement data must translate which employees eligible for retirement qualify for a potential company mentorship program. Pewlett Hackard has over 300,000 employees and needs assistance with performing an analysis on the large-scale of employee data.

#### Data Process
1. **Create an _Entity Relationship Diagram (ERD)_**
	1. This will map out our database schema
	2. Shows us the relationships between various files wihtin the database
	3. Displays data interaction through the use of tables
2. **Import company data into the database**
	1. Data will be imported/exported as CSV files (of various sizes)
	2. Data will uphold integrity and yield a trustworthy analysis due to the defined data types and restrictions for the database
3. **Transform and analyze employee data**
 	1. SQL (Structured Query Langauge) will be used to communicate with the database and retrieve pertinent data
 	2. Analysis for large datasets will include filters, groupings, creating custom tables and joining pre-existing ones

## Results & Findings
Serveral findings were discovered over the employee data. Using multi-pronged queries within our database gave us insight on Pewlett Hackard's retirement/mentorship metrics.

### Employees Eligible for Retirement
- The company has 90,398 employees out of 300,024 _(30.13%)_ who are eligible for retirement.

| **Employee Count**  | **Title** |
| ----   | ----  |
| 29,414 | Senior Engineer | 
| 28,254 | Senior Staff |
| 14,222  | Engineer |
| 12,243 | Staff |
| 4,502 | Technique Leader |
| 1,761 | Assistant Engineer |
| 2 | Manager |
| **90,398** | **Total** |

#### Titles of Retirement Eligible Employees
- Senior Engineers and Senior Staff is the largest share of employees more than likely preparing for retirement. Out of the **90,398 employees** eligible for retirement, **about 63.79%** of employees are either Senior Engineers or Senior Staff.

#### Departments of Retirement Eligible Employees 
- The department with the highest number of potential retirees is the Development department with a total of 23,008 employees (25.45%).

| **Employee Count** | **Department Name** |
| ---- | ---- |
| 23,008 | Development |
| 20,163 | Production |
| 14,083 | Sales |
| 6,577 | Customer Service |
| 5,847 | Research |
| 5,592 | Quality Management |
| 5,495 | Marketing |
| 4,921 | Human Resources |
| 4,712 | Finance |

#### Employees Eligible for Mentorship Program
- The company only had a total of 1,549 future retirees who qualified for the internal promotion of mentoring/training employees.

| **Eligible Employees** | **Title** |
| ---- | ---- |
| 569 | Senior Staff |
| 501 | Engineer |
| 169 | Senior Engineer |
| 155 | Staff |
| 78 | Assistant Engineer |
| 77 | Technique Leader |
| **1,549** | **Total** |

## Summary
Based on our findings, Pewlett Hackard is potentially facing over 90,000 vacant positions company-wide in the near future. Our analysis also revealed the low amount of employees who qualify for the company's mentorship/training program. It is advised Pewlett Hackard brings more employees up to speed in order to avoid a great deficit of labor when 30.13% of employees retire.
