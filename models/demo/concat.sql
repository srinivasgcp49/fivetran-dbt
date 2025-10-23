with concat_data as(
        select * from {{source('fivetran','customers')}}
        ),
 final as (
           select ID,CONCAT(FIRST_NAME,LAST_NAME) AS FULL_NAME from concat_data
           )

select * from final