with source as (
    select * from {{source('dataset1', 'dbt_payments')}}
),

staged as (
    select
        id as payment_id,
        orderid as order_id,
        amount/100 as amount,
        paymentmethod as payment_method,
        status,
        created as created_at,

    from source
)

select * from staged