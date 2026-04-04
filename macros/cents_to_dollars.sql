{% macro cents_to_dollars(column_name) %}
    round( cast((price / 100) as numeric) ,2)
{% endmacro %}
