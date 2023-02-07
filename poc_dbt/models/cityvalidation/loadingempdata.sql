{{ config(materialized='table')}}

with empdata as ( 
    select * from {{ ref('empinfo') }}
)

select * from empdata