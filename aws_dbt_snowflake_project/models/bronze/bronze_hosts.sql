


 
select * from {{source ('stagging', 'listings')}}
--we can use this as keyword where you can refer like using this model in here

{{ config(materialized='incremental') }}


SELECT * FROM  {{ source('staging', 'hosts') }}

{% if is_incremental() %}
    WHERE CREATED_AT > (SELECT COALESCE(MAX(CREATED_AT), '1900-01-01') FROM {{ this }})
{% endif %}