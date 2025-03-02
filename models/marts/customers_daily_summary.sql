select

    {{ dbt_utils.generate_surrogate_key(['customer_id', 'valid_order_date']) }} as id,
    customer_id,
    valid_order_date,
    count(*) as count

from {{ ref('stg_jaffle_shop__orders') }}
group by 1,2,3