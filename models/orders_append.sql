{{ config(
    materialized="incremental",
    incremental_strategy="append",
) }}

select * from demo_project.raw_schema.raw_orders where id in (1,2,100) 

