with cte as (
    select t.* , w.* from {{ ref('trip_fact') }} t
    left join {{ ref('weather_dimension') }} w on t.daily_weather=w.daily_weather
    order by t.daily_weather desc
)

select * from cte