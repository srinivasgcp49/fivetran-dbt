-- models/employee/employee.sql

{{ config(
    materialized='table'
) }}

SELECT
    emp_id,
    first_name,
    last_name,
    department,
    salary,
    hire_date
FROM {{ source('fivetran', 'employee') }};
