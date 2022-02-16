{{ config(materialized='table') }}

/*SAKILA_RAW.MYSQL_RDS_SAKILA.ACTOR*/
select * from {{ source('mysql_rds_sakila', 'address')}}
where _fivetran_deleted = FALSE

