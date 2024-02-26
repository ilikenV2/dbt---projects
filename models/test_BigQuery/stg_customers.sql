with customers as (
    select 
        id as customer_id, 
        first_name,
        last_name

    from dataset1.dbt_customer
)

SELECT * FROM customers 