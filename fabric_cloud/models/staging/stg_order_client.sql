SELECT 
    ro.id,
    ro.user_id,
    ro.order_date,
    ro.status,
    rc.first_name,
    rc.last_name
FROM {{ source('dbt_seed', 'raw_orders') }} ro
LEFT JOIN {{ source('dbt_seed', 'raw_customers') }} rc ON ro.user_id = rc.id