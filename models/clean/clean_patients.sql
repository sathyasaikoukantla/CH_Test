-- date_of_birth '9999-99-99' 
-- Gender 'NaN'

SELECT 
  "PATIENT_ID"::varchar(50) as patient_id, 
  case when "BIRTHDATE" = '9999-99-99' then null else "BIRTHDATE"::timestamp end as date_of_birth,
  "DEATHDATE"::timestamp as date_of_death, 
  "SSN"::varchar(50) as ssn, 
  "DRIVERS"::varchar(50) as drivers, 
  "PASSPORT"::varchar(50) as passport_no,
  "PREFIX"::varchar(50) as prefix, 
  "FIRST"::varchar(50) as first_name, 
  "LAST"::varchar(50) as last_name, 
  "SUFFIX"::varchar(50) as suffix, 
  "MAIDEN"::varchar(50) as maiden_name,
  "MARITAL"::varchar(50) as marital_status,
  "RACE"::varchar(50) as race,
  "ETHNICITY"::varchar(50) as ethnicity,
  replace("GENDER", 'NaN', null)::varchar(50) as gender,
  "BIRTHPLACE"::varchar(50) as birth_place,
  "ADDRESS"::varchar(50) as address,
  "CITY"::varchar(50) as city,
  "STATE"::varchar(50) as state,
  "COUNTY"::varchar(50) as county,
  "FIPS"::float as fips,
  "ZIP"::int as zipcode,
  "LAT"::varchar(50) as latitude,
  "LON"::varchar(50) as longitude,
  "HEALTHCARE_EXPENSES"::float as healthcare_expenses,
  "HEALTHCARE_COVERAGE"::float as healthcare_coverage,
  "INCOME"::float as patient_income
FROM 
  {{ ref('raw_patients') }}
