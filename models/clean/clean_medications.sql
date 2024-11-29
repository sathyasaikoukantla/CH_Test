SELECT 
  "START"::timestamp as medication_start_date,
  "STOP"::timestamp as medication_stop_date,
  "PATIENT"::varchar(50) as patient_id, 
  "PAYER"::varchar(50) as payer_id, 
  lower("ENCOUNTER")::varchar(50) as encounter_id,
  "CODE"::int as medication_code, 
  "DESCRIPTION"::varchar(50) as medication_description,
  "BASE_COST"::int as base_cost,
  "PAYER_COVERAGE"::int as payer_coverage,
  "DISPENSES"::int as quantity,
  "TOTALCOST"::int as total_cost,
  "REASONCODE"::int as medication_reason_code, 
  "REASONDESCRIPTION"::varchar(50) as medication_reason_description
FROM 
  {{ ref('raw_medications') }}