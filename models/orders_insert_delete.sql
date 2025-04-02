{{ config(materialized="incremental",
         unique_key='id',
         incremental_strategy="delete+insert",
         
) }}

select * from demo_project.raw_schema.raw_orders where id in (4,5)

