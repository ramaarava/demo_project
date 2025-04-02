
{{ config(materialized="incremental",
         incremental_strategy="insert_overwrite",
         
) }}

select * from demo_project.raw_schema.raw_orders where id in (6,7,8)
