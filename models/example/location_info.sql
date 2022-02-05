{{ config(materialized='table') }}
with cte as (
select distinct 
Location_ISO_Code,
Location,
Location_Level,
Province,
Island,
Time_Zone,
Special_Status,
Total_Regencies,
Total_Cities,
Total_Districts,
Total_Urban_Villages,
Total_Rural_Villages,
Population,
Population_Density,
Longitude,
Latitude
from FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_sruti_rai)
select * from cte
