with cte as (
select * from {{ ref('weather_dimension') }} w
left join {{ ref('trip_fact') }} t on w.DAILY_WEATHER=t.DAILY_WEATHER

)

select * from cte