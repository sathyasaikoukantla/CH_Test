{{ config(materialized='ephemeral') }}

SELECT 
  patient_id,
  patient_gender, 
  race, 
  ethnicity, 
  symptom_start_age, 
  symptom_end_age, 
  sum(
    case when disease = 'Lupus erythematosus' then 1 :: int else 0 :: int end
  ) as lupus_erythematosus, 
  sum(
    case when disease = 'Anemia (disorder)' then 1 :: int else 0 :: int end
  ) as Anemia_disorder, 
  max(no_of_symptoms) as no_of_symptoms, 
  symptoms, 
  rash, 
  joint_pain, 
  fatigue, 
  fever 
from 
  {{ ref('clean_symptoms') }} s 
group by 
  patient_id, 
  patient_gender, 
  race, 
  ethnicity, 
  symptom_start_age, 
  symptom_end_age, 
  symptoms, 
  rash, 
  joint_pain, 
  fatigue, 
  fever
