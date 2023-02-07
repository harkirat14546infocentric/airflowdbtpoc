{% test city_name(model, column_name) %}

with validation as (

    select
        {{ column_name }} as city

    from {{ model }}

),

validation_errors as (

    select
        city

    from validation
    -- if this is true, then even_field is actually odd!
    where city = 'bn'

)

select *
from validation_errors

{% endtest %}