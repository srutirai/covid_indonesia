{{ config(materialized='view') }}
with cte as (
select distinct location, location_level
from FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_sruti_rai)
select * from cte