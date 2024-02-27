with 

source as (
    select * from {{source('dataset1', 'dbt_customer')}}
),

staged as (
    select 
        id as customer_id, 
        first_name,
        last_name

    from source
)

SELECT * FROM staged 