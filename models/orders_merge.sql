{{ config(
materialized="incremental",
unique_key ='id',
incremental_strategy= "merge"
) }}
select * from demo_project.raw_schema.raw_orders where id in (1,2,3,4) 
