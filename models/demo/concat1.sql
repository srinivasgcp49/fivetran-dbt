with concat_data_ft as(
        select * from {{source('fivetran','customers')}}
        ),
 finals as (
           select ID,CONCAT(FIRST_NAME,CITY) AS FULL_NAME from concat_data_ft
           )

select * from finals