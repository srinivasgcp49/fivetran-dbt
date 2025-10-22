with filter_city as(
        select * from {{source('fivetran','customers')}}
        ),
 filter as (
           select ID,CONCAT(FIRST_NAME,CITY),max(age) AS FULL_NAME from filter_city
           )

select * from filter