SELECT 
    rp.id,
    rp.order_id,
    rp.payment_method,
    rp.amount,
    soc.user_id,
    soc.order_date,
    soc.status,
    soc.first_name,
    soc.last_name
FROM {{ source('dbt_seed', 'raw_payments') }} rp
LEFT JOIN {{ ref('stg_order_client') }} soc
ON rp.order_id = soc.id