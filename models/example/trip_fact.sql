with trips as (
    select 
    bike_id,
    date(starttime) as daily_weather,
    START_STATION_ID,
    END_STATION_ID,
    USERTYPE,

    from {{ source('src_my_name', 'bike') }}

)

select * from trips