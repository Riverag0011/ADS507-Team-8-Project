use new_schema;
CREATE TABLE Person (
	Person_id INT PRIMARY KEY AUTO_INCREMENT,
    Age INT,
    Gender INT,
    Bmi_cat VARCHAR(10),
    children INT,
    smoker VARCHAR(10),
    Charge_cat VARCHAR(10)
);
LOAD DATA INFILE '/Users/lamnguyen/Dropbox/Uyen bom/USD/ADS-507/FinalProject/person.csv'
IGNORE INTO TABLE Person
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Age, Gender, Bmi_cat, children, smoker, Charge_cat)
;

#Select* From Person;
#DROP TABLE Person;

CREATE TABLE Factor (
    Factor_id INT PRIMARY KEY AUTO_INCREMENT,
    Person_id INT,
    Air_pollution INT,
    Alcohol_use INT,
    Dust_Allergy INT,
    Occupational_Hazards INT,
    Genetic_Risk INT,
    Balanced_Diet INT,
    Obesity INT,
    Smoking INT,
    Passive_Smoker INT,
    FOREIGN KEY (Person_id) REFERENCES Person(Person_id)
);

LOAD DATA INFILE '/Users/lamnguyen/Dropbox/Uyen bom/USD/ADS-507/FinalProject/factor.csv'
INTO TABLE Factor
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Air_Pollution, Alcohol_use, Dust_Allergy, OccuPational_Hazards, 
Genetic_Risk, Balanced_Diet, Obesity, Smoking, Passive_Smoker)
;

#DROP TABLE Factor;


CREATE TABLE Symptom (
    Symptom_id INT PRIMARY KEY AUTO_INCREMENT,
    Person_id INT,
    chronic_Lung_Disease INT,
    Chest_Pain INT,
    Coughing_of_Blood INT,
    Fatigue INT,
    Weight_Loss INT,
    Shortness_of_Breath INT,
    Wheezing INT,
    Swallowing_Difficulty INT,
    Clubbing_of_Finger_Nails INT,
    Frequent_Cold INT,
    Dry_Cough INT,
    Snoring INT,
    FOREIGN KEY (Person_id) REFERENCES Person(Person_id)
);

LOAD DATA INFILE '/Users/lamnguyen/Dropbox/Uyen bom/USD/ADS-507/FinalProject/symptom.csv'
INTO TABLE Symptom
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(chronic_Lung_Disease, Chest_Pain, Coughing_of_Blood, Fatigue, 
Weight_Loss, Shortness_of_Breath, Wheezing, Swallowing_Difficulty, 
Clubbing_of_Finger_Nails, Frequent_Cold, Dry_Cough, Snoring)
;
Select* From Symptom;

#DROP TABLE Symptom;

CREATE TABLE Region (
    Region_id INT PRIMARY KEY AUTO_INCREMENT,
    Person_id INT,
    region VARCHAR(20),
    Charge_Cat VARCHAR(10),
    FOREIGN KEY (Person_id) REFERENCES Person(Person_id)
);

LOAD DATA INFILE '/Users/lamnguyen/Dropbox/Uyen bom/USD/ADS-507/FinalProject/region.csv'
INTO TABLE Region
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(region, Charge_Cat)
;
Select* From Region;
#DROP TABLE Region;

CREATE TABLE Level (
    Level_id INT PRIMARY KEY AUTO_INCREMENT,
    Factor_id INT,
    Level VARCHAR(20),
    Charge_Cat VARCHAR(10),
    FOREIGN KEY (Factor_id) REFERENCES Factor(Factor_id)
);

LOAD DATA INFILE '/Users/lamnguyen/Dropbox/Uyen bom/USD/ADS-507/FinalProject/level.csv'
INTO TABLE Level
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Level, Charge_Cat)
;
Select* From Level;








