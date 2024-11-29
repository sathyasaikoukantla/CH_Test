a = 'CREATE TABLE dbt.raw_patients_dump (\
	patient_id varchar(50) NULL,\
	birthdate varchar(50) NULL,\
	deathdate varchar(50) NULL,\
	ssn varchar(50) NULL,\
	drivers varchar(50) NULL,\
	passport varchar(50) NULL,\
	prefix varchar(50) NULL,\
	"FIRST" varchar(50) NULL,\
	"LAST" varchar(50) NULL,\
	suffix varchar(50) NULL,\
	maiden varchar(50) NULL,\
	marital varchar(50) NULL,\
	race varchar(50) NULL,\
	ethnicity varchar(50) NULL,\
	gender varchar(50) NULL,\
	birthplace varchar(128) NULL,\
	address varchar(50) NULL,\
	city varchar(50) NULL,\
	state varchar(50) NULL,\
	county varchar(50) NULL,\
	fips float4 NULL,\
	zip int4 NULL,\
	lat float4 NULL,\
	lon float4 NULL,\
	healthcare_expenses float4 NULL,\
	healthcare_coverage float4 NULL,\
	income int4 NULL\
);'

print(a.upper())

