SELECT 
  "Id"::varchar(50) as patient_id, 
  "GENDER"::varchar(1) as patient_gender
FROM 
  {{ ref('raw_patient_gender') }}