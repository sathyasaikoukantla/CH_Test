-- Gender 'NaN'

SELECT 
  "PATIENT"::varchar(50) as patient_id, 
  replace("GENDER", 'NaN', null)::varchar(50) as patient_gender,
  "RACE"::varchar(50) as race, 
  "ETHNICITY"::varchar(50) as ethnicity, 
  "AGE_BEGIN"::int as symptom_start_age, 
  "AGE_END"::int as symptom_end_age, 
  "PATHOLOGY"::varchar(50) as disease, 
  "NUM_SYMPTOMS"::int as no_of_symptoms, 
  "SYMPTOMS"::varchar(100) as symptoms,
  REPLACE(split_part("SYMPTOMS", ';', 1), 'Rash:', '')::int as rash,
  REPLACE(split_part("SYMPTOMS", ';', 2), 'Joint Pain:', '')::int as joint_pain,
  REPLACE(split_part("SYMPTOMS", ';', 3), 'Fatigue:', '')::int as fatigue,
  REPLACE(split_part("SYMPTOMS", ';', 4), 'Fever:', '')::int as fever
FROM 
  {{ ref('raw_symptoms') }}
