
{{ config(materialized="table") }}

with
    custo_test as (
        select
            id as id_customer,
            first_name as first_name_customer,
            last_name as laste_name_customer

        from dataset1.dbt_customer
    )

final as(
    select ID, FIRST_NAME, LAST_NAME, 
)


select *
from dataset1.dbt_customer
