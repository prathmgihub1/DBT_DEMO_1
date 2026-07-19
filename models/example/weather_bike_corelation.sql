with cte as (
select * from {{ ref('weather_dimension') }} w
inner join {{ ref('trip_fact') }} t on w.DAILY_WEATHER=t.DAILY_WEATHER

)

select * from cte