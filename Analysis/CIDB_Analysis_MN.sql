--create database cancer_insurance

--checking the datasets
select * from cancer
select * from insurance

-- which region do people belong to(region count)
select region, count(*) as cnt
from insurance
group by region

--smoking from each gender
select sex,count(smoker) as smokers
from insurance group by sex

--average bmi of genders
select sex, avg(bmi) as avg_bmi, count(*)
from insurance group by sex

--people with children vs people with no children - smoking
select 
case when children>0 then 'children' else 'no children' end as children_or_not,
(sum(case when smoker=1 then 1 else 0 end)*100.00)/count(smoker) as percent_smokers
from insurance
group by case when children>0 then 'children' else 'no children' end

--avg charge for each age group + avg bmi, avg children
select
case when age between 0 and 10 then '0-10'
when age between 11 and 20 then '11-20'
when age between 21 and 30 then '21-30'
when age between 31 and 40 then '31-40'
when age between 41 and 50 then '41-50'
when age between 51 and 60 then '51-60'
when age between 61 and 70 then '61-70'
else '>70'
end as age_group,
count(*) as num_of_people,
sum(case when sex='male' then 1 else 0 end) as males,
sum(case when sex='female' then 1 else 0 end) as females,
avg(bmi) as avg_bmi,
avg( children*1.0) as avg_children,
(sum(case when smoker=1 then 1 else 0 end)*100.00)/count(smoker) as percent_smokers,
avg(charges) as avg_charges
from insurance
group by case when age between 0 and 10 then '0-10'
when age between 11 and 20 then '11-20'
when age between 21 and 30 then '21-30'
when age between 31 and 40 then '31-40'
when age between 41 and 50 then '41-50'
when age between 51 and 60 then '51-60'
when age between 61 and 70 then '61-70'
else '>70'
end 
order by age_group

--looking at unique ages
select distinct age from cancer order by age

--looking at avg traits by gender
select level, 
sum(case when gender=1 then 1 else 0 end ) as males,
sum(case when gender=2 then 1 else 0 end) as females,
(sum(case when gender=1 then 1 else 0 end )*100.00)/count(*) as male_percent,
(sum(case when gender=2 then 1 else 0 end )*100.00)/count(*) as female_percent,
avg(air_pollution) as avg_pollution, avg(Alcohol_use) as avg_alcohol, avg(dust_allergy) as avg_dust_all,
avg(occupational_hazards) as avg_occ_hazards, avg(genetic_risk) as avg_genetic, avg(chronic_lung_disease) as avg_lung_dis,
avg(balanced_diet) as avg_balanced_diet, avg(obesity) as savg_obesity, avg(smoking) as avg_smoking, avg(passive_smoker) as avg_passive_smoking,
avg(chest_pain) as avg_chests_pain, avg(coughing_of_blood) as avg_cough_blood, avg(fatigue) as avg_fatigue, avg(weight_loss) as avg_wt_loss,
avg(shortness_of_breath) as avg_shortness_breath, avg(wheezing) as avg_wheezing, avg(swallowing_difficulty) as avg_swallowing_diff,
avg(clubbing_of_finger_nails) as avg_clubbing_finger_nails, avg(frequent_cold) as savg_frequent_cold, avg(dry_cough) as avg_dry_cough,
avg(snoring) as avg_snoring, avg(children*1.00) avg_children
from cancer
group by level
order by females desc 

--looking at avg traits with probabiliy of cancers in age groups
select  case when age between 0 and 10 then '0-10'
when age between 11 and 20 then '11-20'
when age between 21 and 30 then '21-30'
when age between 31 and 40 then '31-40'
when age between 41 and 50 then '41-50'
when age between 51 and 60 then '51-60'
when age between 61 and 70 then '61-70'
else '>70'
end as age_group,
sum(case when gender=1 then 1 else 0 end ) as males,
sum(case when gender=2 then 1 else 0 end) as females,
sum( case when Level='Low' then 1 else 0 end) as low_prob,
round((sum( case when Level='Low' then 1 else 0 end) *100.00)/count(*),2) as perc_low_prob,
sum( case when Level='Medium' then 1 else 0 end) as medium_prob,
round((sum( case when Level='Medium' then 1 else 0 end) *100.00)/count(*),2) as perc_medium_prob,
sum( case when Level='High' then 1 else 0 end) as high_prob,
round((sum( case when Level='High' then 1 else 0 end) *100.00)/count(*),2) as perc_high_prob,
avg(air_pollution) as avg_pollution, avg(Alcohol_use) as avg_alcohol, avg(dust_allergy) as avg_dust_all,
avg(occupational_hazards) as avg_occ_hazards, avg(genetic_risk) as avg_genetic, avg(chronic_lung_disease) as avg_lung_dis,
avg(balanced_diet) as avg_balanced_diet, avg(obesity) as savg_obesity, avg(smoking) as avg_smoking, avg(passive_smoker) as avg_passive_smoking,
avg(chest_pain) as avg_chests_pain, avg(coughing_of_blood) as avg_cough_blood, avg(fatigue) as avg_fatigue, avg(weight_loss) as avg_wt_loss,
avg(shortness_of_breath) as avg_shortness_breath, avg(wheezing) as avg_wheezing, avg(swallowing_difficulty) as avg_swallowing_diff,
avg(clubbing_of_finger_nails) as avg_clubbing_finger_nails, avg(frequent_cold) as savg_frequent_cold, avg(dry_cough) as avg_dry_cough,
avg(snoring) as avg_snoring, avg(children*1.00) avg_children
from cancer group by case when age between 0 and 10 then '0-10'
when age between 11 and 20 then '11-20'
when age between 21 and 30 then '21-30'
when age between 31 and 40 then '31-40'
when age between 41 and 50 then '41-50'
when age between 51 and 60 then '51-60'
when age between 61 and 70 then '61-70'
else '>70'
end 
order by age_group

select * from cancer
select * from insurance

---joining both tables on age group and gender, selecting justs 21-50 age groups because of significant num of data points
select 
c.age_group,c.gen, c.level, avg(i.bmi) as avg_bmi, avg(i.children*1.0) as avg_children, 
sum(case when i.smoker=1 then 1 else 0 end) as smokers, avg(i.charges) as avg_charges, 
sum(case when i.region='southwest' then 1 else 0 end) as southwest,
sum(case when i.region='southeast' then 1 else 0 end) as southeast,
sum(case when i.region='northwest' then 1 else 0 end) as northwest,
sum(case when i.region='northeast' then 1 else 0 end) as northeast
from
(select *, case when age between 0 and 10 then '0-10'
when age between 11 and 20 then '11-20'
when age between 21 and 30 then '21-30'
when age between 31 and 40 then '31-40'
when age between 41 and 50 then '41-50'
when age between 51 and 60 then '51-60'
when age between 61 and 70 then '61-70'
else '>70'
end as age_group, case when gender=1 then 'male' else 'female' end as gen from cancer where age between 21 and 50) c
left join
(select *, case when age between 0 and 10 then '0-10'
when age between 11 and 20 then '11-20'
when age between 21 and 30 then '21-30'
when age between 31 and 40 then '31-40'
when age between 41 and 50 then '41-50'
when age between 51 and 60 then '51-60'
when age between 61 and 70 then '61-70'
else '>70'
end as age_group from insurance where age between 21 and 50) i
on c.age_group=i.age_group
and c.gen=i.sex
group by c.age_group, c.gen, c.level
order by c.age_group, c.level

--avg bmi in correspondance to lvl of cancer chance
select
c.level, avg(i.bmi) as avg_bmi
from
(select *, case when age between 0 and 10 then '0-10'
when age between 11 and 20 then '11-20'
when age between 21 and 30 then '21-30'
when age between 31 and 40 then '31-40'
when age between 41 and 50 then '41-50'
when age between 51 and 60 then '51-60'
when age between 61 and 70 then '61-70'
else '>70'
end as age_group, case when gender=1 then 'male' else 'female' end as gen from cancer where age between 21 and 50) c
left join
(select *, case when age between 0 and 10 then '0-10'
when age between 11 and 20 then '11-20'
when age between 21 and 30 then '21-30'
when age between 31 and 40 then '31-40'
when age between 41 and 50 then '41-50'
when age between 51 and 60 then '51-60'
when age between 61 and 70 then '61-70'
else '>70'
end as age_group from insurance where age between 21 and 50) i
on c.age_group=i.age_group
and c.gen=i.sex
group by c.level
