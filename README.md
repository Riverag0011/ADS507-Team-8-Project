For your GitHub repository and code:

Your pipeline must be fully reproducible from the GitHub repository.
    Ideally, your pipeline is deployed using infrastructure as code (IaC)
    Document the deployment process in the README.
    Manual processes can be required in the deployment process, but these must be fully documented in your README.
Your pipeline must load data to a persistent data store.
    There are no restrictions on the type of data store.
    Your pipeline must include at least one SQL transformation of your data.
You must address and incorporate any feedback provided by the instructor on your Module 5 status report.

The README must include the following:
    An overview of the contents of the repository.
    How to deploy your pipeline.
    How to monitor your pipeline.
    
    
    
    
### Feature description:

*age: patient age		
*air_polution: level of air pollution	
*alcohol_use: level of alcohol use	
*balanced_diet: level of balanced diet	
*bmi_cat: (low, normal, and high)	
*cancer_level: level of cancer	
*charge_level: level of insurance charges (1: 0- <5k, 2: 5K- <10K, 3: 10K<15K, 4:>15K)
*chest_pain: level of chest pain	
*children: patient’s number of child	
chronic _lung_disease: level of chronic lung disease
clubbing_of_finger_nails: level of clubbing of finger nails
coughing_of_blood: level of coughing of blood
dry_cough: level of dry cough	
dust_allergy: level of dust allergy	
fatigue: level of fatigue		
frequent_cold: level of frequent cold	
gender: (1: male, 2: female)	
genetic_risk: level of genetic risk	
occupational_hazards: level of occupational hazards
region: region of residence	
shortness_of _breath: level of shortness of breath
smoker: whether patient is a smoker	
snoring: level of snoring	
swallow_difficulty: level of swallow difficulty
weight_lost: level of weight lost	
wheezing: level of wheezing	




### Repository Map 

Main Branch:
(FINAL)_cancer_insurance_database.sql = Final Database sql file
(FINAL)_cancer_insurance_transformation_UP.ipynb = Jupyter notebook file containing dataset transformation
(FINAL)_cancer_insurance_update_UP.sql = SQL file containing dataset transformation
CIDB_Visualization_GR.ipynb = Jupyter notebook file containing visualizations
README = file containing features, repository map, & Deploy/Monitor

Folders:
Analysis = folder contains metrics, statistics, and analysis of cancer insurance database
CancerInsuranceDatabase = folder contains preliminary work on building the database
Datasets = folder contains datasets files in CSV format and licenses





### Deploy and Monitor

Please deploy local sql database manually using the (FINAL)_cancer_insurance_database.sql file. 
The same with the following output files:
    CIBD_Exploratory_MN_by_ipynb.ipynb
    CIDB_EPLORATORY_MN_by_SQL.sql
    CIDB_Visualization_GR.ipynb







