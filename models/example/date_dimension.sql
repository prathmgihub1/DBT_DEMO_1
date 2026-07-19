with cte as (select 
    starttime,
    date(starttime),
    hour(starttime),
    {{get_day('starttime')}},
    {{station_name('starttime')}}
     from {{ source('src_my_name', 'bike') }}
)

select * from cte