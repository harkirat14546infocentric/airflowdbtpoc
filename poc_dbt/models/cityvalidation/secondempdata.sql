with source_data as (
    select * from {{ref ('loadingempdata') }}
)

select * from source_data