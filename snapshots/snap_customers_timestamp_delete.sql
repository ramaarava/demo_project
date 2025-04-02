{% snapshot  snap_customers_timestamp_delete %}

{{
    config(
      strategy='timestamp',
      unique_key='id',
      updated_at='updated_at',
      invalidate_hard_deletes=True 
    )
}}
select * 
from DEMO_PROJECT.RAW_SCHEMA.CUSTOMERS
{% endsnapshot %}
