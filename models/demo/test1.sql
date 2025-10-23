with filter_city as (
    select *
    from {{ source('fivetran', 'customers') }}
),

filtered_customers as (
    select
        ID,
        CONCAT(FIRST_NAME, ' ', CITY) as full_name,
        max(age) as max_age
    from filter_city
    group by ID, FIRST_NAME, CITY
)

select *
from filtered_customers