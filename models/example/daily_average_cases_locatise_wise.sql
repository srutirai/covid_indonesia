{{ config(materialized='table') }}
with cte as (
select 
DATE,
Location_ISO_Code, 
AVG(New_Cases),
AVG(New_Deaths),
AVG(New_Recovered),
AVG(New_Active_Cases)
from FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_sruti_rai
GROUP BY DATE, Location_ISO_Code)
select * from cte