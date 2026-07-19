{% macro get_day(x) %}
case 
    when dayname({{x}}) in ('Sat','Sun') then 'Weekend'
    else 'Businessday'
end
{% endmacro %}


{% macro station_name(x)%}
case
    when month({{x}}) in (1,2,3) then 'Winter'
    when month({{x}}) in (4,5,6) then 'Summer '
    when month({{x}}) in (7,8,9) then 'Monsoon'
    else 'Post-Monsoon'
end
{% endmacro %}