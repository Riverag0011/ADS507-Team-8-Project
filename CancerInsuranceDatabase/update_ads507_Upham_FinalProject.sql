use cancer_insur;
CREATE TABLE symptom (
    cancer_id INT PRIMARY KEY,
    chest_pain INT,
    coughing_of_blood INT,
    fatigue INT,
    weight_loss INT,
    shortness_of_breath INT,
    wheezing INT,
    swallowing_wifficulty INT,
    clubbing_of_inger_nails INT,
    frequent_cold INT,
    dry_cough INT,
    snoring INT,
    cancer_level VARCHAR(20)
);
#DROP TABLE symptom;
LOAD DATA INFILE '/Users/lamnguyen/Dropbox/Uyen bom/USD/ADS-507/FinalProject/symptom.csv'
INTO TABLE symptom
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
;

CREATE TABLE patient (
	patient_id INT PRIMARY KEY, 
    age INT,
    gender INT,
    bmi_cat VARCHAR(10),
    children INT,
    region VARCHAR(10),
    cancer_id INT,
    FOREIGN KEY (cancer_id) REFERENCES symptom(cancer_id)
);
#DROP TABLE patient;
LOAD DATA INFILE '/Users/lamnguyen/Dropbox/Uyen bom/USD/ADS-507/FinalProject/patient.csv'
IGNORE INTO TABLE patient
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
;

#Select* From patient
#DROP TABLE Person;

CREATE TABLE factor (
    factor_id INT PRIMARY KEY,
    air_pollution INT,
    dust_allergy INT,
    occupational_hazards INT,
    genetic_risk INT,
    chronic_lung_disease INT,
    cancer_id INT,
    FOREIGN KEY (cancer_id) REFERENCES symptom(cancer_id)
);

LOAD DATA INFILE '/Users/lamnguyen/Dropbox/Uyen bom/USD/ADS-507/FinalProject/factor.csv'
INTO TABLE factor
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
;
#Select* From factor
#DROP TABLE Factor;

CREATE TABLE insurance_info (
    insurance_id INT PRIMARY KEY,
    charge_level INT,
    patient_id INT,
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);

LOAD DATA INFILE '/Users/lamnguyen/Dropbox/Uyen bom/USD/ADS-507/FinalProject/insurance_info.csv'
INTO TABLE insurance_info
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
;
Select* From insurance_info;

CREATE TABLE behavior (
    behavior_id INT PRIMARY KEY,
    alcohol_use INT,
    smoker VARCHAR(20),
    balanced_diet INT,
    patient_id INT,
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);
LOAD DATA INFILE '/Users/lamnguyen/Dropbox/Uyen bom/USD/ADS-507/FinalProject/behavior.csv'
INTO TABLE behavior
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
;
#Select* From behavior;






