select 
  p.*, 
  "start", 
  stop, 
  c.code, 
  c.description, 
  medication_start_date, 
  medication_stop_date, 
  m.payer_id, 
  medication_code, 
  medication_description, 
  m.base_cost as medications_base_cost, 
  m.payer_coverage as medications_payer_coverage, 
  quantity, 
  total_cost, 
  medication_reason_code, 
  medication_reason_description, 
  e.encounter_id, 
  start_date, 
  stop_date, 
  organization_id, 
  provider_id, 
  encounter_type, 
  e.description as encounter_description, 
  e.base_cost as encounters_base_cost, 
  total_claim_cost, 
  e.payer_coverage as encounters_payer_coverage, 
  reason_code, 
  reason_description 
from 
  {{ ref('dim_patients') }} p 
  left join {{ ref('clean_conditions') }} c on p.patient_id = c.patient_id 
  left join {{ ref('clean_medications') }} m on p.patient_id = m.patient_id 
  left join {{ ref('clean_encounters') }} e on p.patient_id = e.patient_id
