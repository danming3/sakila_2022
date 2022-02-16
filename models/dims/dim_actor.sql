{{ config(materialized='table') }}
/* otherwise default is creating a view rather than table */

select 
    actor_id as actor_key,
    CONCAT_WS(' ', last_name, first_name) as full_name 
from
    {{ ref('stg_actor')}}
    /*auto generate path SAKILA_DW.DBT_DWANG.STG_ACTOR */
    