with 

source as (
    select * from {{source('dataset1', 'dbt_orders')}}
),

staged as (
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from source
)

select * from staged