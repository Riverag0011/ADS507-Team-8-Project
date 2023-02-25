--create database cancer_insur

--Datasets Viewing
select * from behavior
select * from insurance_info
select * from factor
select * from patient
select * from symtom

--People vs Region
select region, count(*) as cnt
from patient
group by region

--Average Factor by Level of Cancer_ID
select cancer_id, 
avg(air_pollution) as avg_pollution, avg(dust_allergy) as avg_dust_all,
avg(occupational_hazards) as avg_occ_hazards, avg(genetic_risk) as avg_genetic, avg(chronic_lung_disease) as avg_lung_dis,
avg(factor_id) as factor_id
from factor
group by cancer_id
order by cancer_id desc  

--Average Symptom by Level of Cancer_ID
select cancer_id, 
avg(chest_pain) as avg_chests_pain, avg(coughing_of_blood) as avg_cough_blood, avg(fatigue) as avg_fatigue, avg(weight_loss) as avg_wt_loss,
avg(shortness_of_breath) as avg_shortness_breath, avg(wheezing) as avg_wheezing, avg(swallowing_wifficulty) as avg_swallowing_diff,
avg(clubbing_of_inger_nails) as avg_clubbing_finger_nails, avg(frequent_cold) as savg_frequent_cold, avg(dry_cough) as avg_dry_cough,
avg(snoring) as avg_snoring
from symptom
group by cancer_id
order by cancer_id desc 

--Average Cancer_Id and Max bmi by Age Group
select case when age between 0 and 10 then '0-10'
when age between 11 and 20 then '11-20'
when age between 21 and 30 then '21-30'
when age between 31 and 40 then '31-40'
when age between 41 and 50 then '41-50'
when age between 51 and 60 then '51-60'
when age between 61 and 70 then '61-70'
else '>70'
end as age_group,
max(bmi_cat) as bmi_cat, avg(cancer_id) as cancer_id
from patient group by case when age between 0 and 10 then '0-10'
when age between 11 and 20 then '11-20'
when age between 21 and 30 then '21-30'
when age between 31 and 40 then '31-40'
when age between 41 and 50 then '41-50'
when age between 51 and 60 then '51-60'
when age between 61 and 70 then '61-70'
else '>70'
end 
order by age_group

--Patient_ID vs Cancer_ID
select cancer_id, 
count(patient_id) as patient_id
from patient
group by cancer_id
order by cancer_id desc 

--Patient_ID vs Charge_Level
select Charge_Level, 
count(patient_id) as patient_id
from insurance_info
group by charge_level
order by charge_level desc 