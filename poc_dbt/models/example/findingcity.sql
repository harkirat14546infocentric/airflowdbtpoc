with source_data as (
    select * from {{ ref('empcity')}}
),
citynames as ( 
    select * from {{ref('inputdata')}}
),

final as (
    select source_data.city,citynames.cityname from source_data left join 
    citynames on source_data.city=citynames.city
)

select * from final