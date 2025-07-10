Employee Attrition and HR Insights with SQL-Powered Data Pipeline

Overview:-  
This project explores employee attrition patterns and HR insights by building a complete data analysis pipeline. It integrates normalized HR datasets from PostgreSQL into a Python environment using psycopg2 and performs an in-depth exploratory data analysis (EDA) using Pandas, Matplotlib, and Seaborn.

Objectives:-

- Identify key factors contributing to employee attrition

- Analyze HR data across departments, job roles, and demographics

- Build actionable insights for improving employee retention

- Strengthen skills in SQL, Python, and data visualization

Tools & Technologies:-
 
| Tool             | Purpose                        |
| ---------------- | ------------------------------ |
| PostgreSQL       | Database storage & SQL queries |
| psycopg2         | Connect PostgreSQL to Python   |
| Python           | Data manipulation and analysis |
| Pandas           | Data wrangling                 |
| Matplotlib       | Visualizations                 |
| Seaborn          | Statistical plotting           |
| Jupyter Notebook | Interactive analysis           |


Key Analysis Areas:-

- Attrition Rate by Department and Job Role

- Impact of Overtime, Job Satisfaction & Promotions on Attrition

- Age & Tenure Distribution Across Roles

- Gender-Based Attrition Patterns

- Marital Status vs Attrition Trends
  
Database Schema & ER Diagram:-

The PostgreSQL database was normalized and designed with the star schema approach, centering around the fact_employee table and its relationships to multiple dimension tables.

Entity-Relationship Diagram

Tables Included:

- department(department_id, department_name)

- job_role(job_role_id, job_role_name)

- education_field(education_field_id, education_field_name)

- gender(gender_id, gender_type)

- marital_status(marital_status_id, status)

- fact_employee (fact table with demographic, performance, and attrition details)


Data Pipeline Workflow:-
 
1. Data Preparation in PostgreSQL

- HR data normalized into multiple tables (Employees, Departments, Jobs, etc.)

-  Joined using SQL queries to form relational insights

2.Data Extraction using psycopg2

- Queried and loaded into Pandas DataFrames

3.Exploratory Data Analysis (EDA)

- Univariate, Bivariate, and Multivariate Analysis

- Visualizations for decision-making support

Visuals (Excluding Bar Charts & Heatmaps):-
 
- Violin plots

- Pie charts

- Box plots

- Line charts

- Scatter plots

Outcomes:-
 
- Identified top causes of employee attrition

- Revealed departments and demographics most affected

- Generated insights to aid HR in policy improvements

👨‍💻 About Me
I'm Muhammed Aslam, passionate about uncovering meaningful patterns through data.
This project is part of my ongoing learning journey in data analysis, with a special focus on SQL and real-world business data.

📁 Project Files
Employee Attrition and HR Insights with SQL-Powered Data Pipeline.ipynb – Main notebook. 

SQL creation and population queries are included in projet sql_query.sql - sql query.

Data source: cleaned_attrition_dataset_new2.csv - cleaned dataset.
