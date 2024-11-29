SELECT 
  "START"::text::date as "start", 
  "STOP"::text::date as "stop", 
  lower("PATIENT")::varchar(50) as patient_id, 
  "ENCOUNTER"::varchar(50) as encounter_id, 
  "CODE"::int as code, 
  "DESCRIPTION"::varchar(50) as "description"
FROM 
  {{ ref('raw_conditions') }}
