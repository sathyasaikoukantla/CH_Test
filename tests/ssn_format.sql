WITH validation AS (
  SELECT 
    ssn 
  FROM 
    {{ ref('clean_patients') }}
) 
SELECT 
  ssn 
FROM 
  validation 
WHERE 
  ssn !~ '^\d{3}-\d{2}-\d{4}$'
