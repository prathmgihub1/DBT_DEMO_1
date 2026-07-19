with weather as (
    select * from {{ source('src_my_name', 'weather') }}
)

select * from weather