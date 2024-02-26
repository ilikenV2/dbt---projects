with orders as (
    select
        id as order_idc,
        user_id as customer_id,
        order_date,
        status

    from dataset1.dbt_orders
)

select * from orders