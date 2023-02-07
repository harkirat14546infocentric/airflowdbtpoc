with source_data as (

    select 'bng' as city
    union all
    select 'hyd' as city

)

select *
from source_data