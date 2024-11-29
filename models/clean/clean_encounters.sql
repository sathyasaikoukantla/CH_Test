SELECT 
  "Id"::varchar(50) as encounter_id, 
  "START"::timestamp as start_date, 
  "STOP"::timestamp as stop_date, 
  lower("PATIENT")::varchar(50) as patient_id, 
  "ORGANIZATION"::varchar(50) as organization_id, 
  "PROVIDER"::varchar(50) as provider_id, 
  "PAYER"::varchar(50) as payer_id, 
  "ENCOUNTERCLASS"::varchar(50) as encounter_type, 
  "CODE"::int as code, 
  "DESCRIPTION"::varchar(50) as "description", 
  "BASE_ENCOUNTER_COST"::int as base_cost, 
  "TOTAL_CLAIM_COST"::int as total_claim_cost, 
  "PAYER_COVERAGE"::int as payer_coverage, 
  "REASONCODE"::int as reason_code, 
  "REASONDESCRIPTION"::varchar(50) as reason_description
FROM 
  {{ ref('raw_encounters') }}
