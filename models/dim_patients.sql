select 
  p.*, 
  pg.patient_gender, 
  symptom_start_age, 
  symptom_end_age, 
  lupus_erythematosus, 
  Anemia_disorder, 
  no_of_symptoms, 
  symptoms, 
  rash, 
  joint_pain, 
  fatigue, 
  fever 
from 
  {{ ref('clean_patients') }} as p 
  join {{ ref('clean_patient_gender') }} as pg on p.patient_id = pg.patient_id 
  left join {{ ref('dim_patients_symptoms') }} as s on s.patient_id = p.patient_id
