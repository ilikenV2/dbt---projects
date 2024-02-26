/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/
{{ config(materialized="table") }}

with
    custo_test as (
        select
            id as id_customer,
            first_name as first_name_customer,
            last_name as laste_name_customer

        from dataset1.dbt_customer
    )

select *
from dataset1.dbt_customer
