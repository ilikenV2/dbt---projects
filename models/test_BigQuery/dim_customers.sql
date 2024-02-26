{{ config(materialized="table") }}

with customers as (
    select 
        id as customer_id, 
        first_name,
        last_name

    from dataset1.dbt_customer
),

orders as (
    select
        id as order_idc
        user_id as customer_id
        order_date,
        status

    from dataset1.dbt_orders
)