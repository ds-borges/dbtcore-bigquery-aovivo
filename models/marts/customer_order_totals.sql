with orders as (
    select * from {{ ref('stg_orders') }}
),

order_totals as (
    select
        customer_id,
        sum(order_total) as total_spent
    from orders
    group by 1
)

select * from order_totals
