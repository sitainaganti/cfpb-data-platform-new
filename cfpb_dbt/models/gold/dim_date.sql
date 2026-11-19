with bounds as (
    select min(date_received) as d0, max(date_received) as d1
    from {{ ref('stg_complaints') }}
),
days as (
    select explode(sequence(d0, d1, interval 1 day)) as date_day
    from bounds
)
select
    date_day,
    year(date_day)                    as year,
    quarter(date_day)                 as quarter,
    month(date_day)                   as month,
    date_format(date_day, 'MMMM')     as month_name,
    date_format(date_day, 'EEEE')     as day_name,
    dayofweek(date_day) in (1, 7)     as is_weekend
from days