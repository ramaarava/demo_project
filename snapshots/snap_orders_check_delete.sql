{% snapshot snap_orders_check_delete %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='id',
          check_cols=['user_id','order_date', 'status'],
          invalidate_hard_deletes=True 
        )
    }}

    select * from demo_project.raw_schema.raw_orders limit 10

{% endsnapshot %}
