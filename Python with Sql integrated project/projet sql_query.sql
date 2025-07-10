INSERT INTO gender (gender_type)
SELECT DISTINCT gender FROM employee_attrition_new6;

INSERT INTO marital_status (status)
SELECT DISTINCT marital_status FROM employee_attrition_new6;

CREATE TABLE fact_employee (
    employee_id INTEGER PRIMARY KEY,
    department_id INTEGER REFERENCES department(department_id),
    job_role_id INTEGER REFERENCES job_role(job_role_id),
    education_field_id INTEGER REFERENCES education_field(education_field_id),
    gender_id INTEGER REFERENCES gender(gender_id),
    marital_status_id INTEGER REFERENCES marital_status(marital_status_id),

    age INTEGER,
    education INTEGER,
    job_level INTEGER,
    monthly_income FLOAT,
    performance_rating INTEGER,
    job_satisfaction INTEGER,
    environment_satisfaction INTEGER,
    years_at_company INTEGER,
    years_in_current_role INTEGER,
    attrition INTEGER
);

INSERT INTO fact_employee (
    employee_id, 
    department_id, 
    job_role_id, 
    education_field_id, 
    gender_id, 
    marital_status_id,
    age, 
    education, 
    job_level, 
    monthly_income, 
    performance_rating,
    job_satisfaction, 
    environment_satisfaction, 
    years_at_company, 
    years_in_current_role, 
    attrition
)
SELECT
    ea.employeeid,
    d.department_id,
    jr.job_role_id,
    ef.education_field_id,
    g.gender_id,
    ms.marital_status_id,
    ea.age,
    ea.education,
    ea.joblevel,
    ea.monthlyincome,
    ea.performancerating,
    ea.jobsatisfaction,
    ea.environmentsatisfaction,
    ea.yearsatcompany,
    ea.yearsincurrentrole,
    CASE WHEN ea.attrition = 'Yes' THEN 1 ELSE 0 END -- Convert to integer
FROM 
    employee_attrition_new6 ea
    JOIN department d ON ea.department = d.department_name
    JOIN job_role jr ON ea.jobrole = jr.job_role_name
    JOIN education_field ef ON ea.educationfield = ef.education_field_name
    JOIN gender g ON ea.gender = g.gender_type
    JOIN marital_status ms ON ea.maritalstatus = ms.status;
