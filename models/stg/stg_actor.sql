{{ config(materialized='table') }}

/*SAKILA_RAW.MYSQL_RDS_SAKILA.ACTOR*/
select * from {{ source('mysql_rds_sakila', 'actor')}}
where _fivetran_deleted = FALSE