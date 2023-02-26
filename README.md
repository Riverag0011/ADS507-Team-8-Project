
    
### Database Feature description:

<li>age: patient age		
<li>air_polution: level of air pollution	
<li>alcohol_use: level of alcohol use	
<li>balanced_diet: level of balanced diet
<li>bmi_cat: (low, normal, and high)	
<li>cancer_level: level of cancer	
<li>charge_level: level of insurance charges (1: 0- <5k, 2: 5K- <10K, 3: 10K<15K, 4:>=15K)
<li>chest_pain: level of chest pain	
<li>children: patient’s number of child	
<li>chronic _lung_disease: level of chronic lung disease
<li>clubbing_of_finger_nails: level of clubbing of finger nails
<li>coughing_of_blood: level of coughing of blood
<li>dry_cough: level of dry cough
<li>dust_allergy: level of dust allergy	
<li>fatigue: level of fatigue		
<li>frequent_cold: level of frequent cold
<li>gender: (1: male, 2: female)	
<li>genetic_risk: level of genetic risk
<li>occupational_hazards: level of occupational hazards
<li>region: region of residence	
<li>shortness_of _breath: level of shortness of breath
<li>smoker: whether patient is a smoker	
<li>snoring: level of snoring	
<li>swallow_difficulty: level of swallow difficulty
<li>weight_lost: level of weight lost
<li>wheezing: level of wheezing	




### Repository Map 

Main Branch:
<li>(FINAL)_cancer_insurance_database.sql = Final Database sql file
<li>(FINAL)_cancer_insurance_transformation_UP.ipynb = Jupyter notebook file containing dataset transformation
<li>(FINAL)_cancer_insurance_update_UP.sql = SQL file containing dataset creation and data loading
<li>CIDB_Visualization_GR.ipynb = Jupyter notebook file containing visualizations
<li>README = file containing features, repository map, & Deploy/Monitor

Folders:
<li>Analysis = folder contains metrics, statistics, and analysis of cancer insurance database: CIBD_Exploratory_MN_by_ipynb.ipynb and CIDB_EPLORATORY_MN_by_SQL.sql files
<li>CancerInsuranceDatabase = folder contains preliminary work on building the database
<li>Datasets = folder contains datasets files in CSV format and licenses





### Deploy and Monitor

<p>Please deploy local sql database manually using the (FINAL)_cancer_insurance_database.sql file. 
<p>The same with the following output files:
    <li>CIBD_Exploratory_MN_by_ipynb.ipynb
    <li>CIDB_EPLORATORY_MN_by_SQL.sql
    <li>CIDB_Visualization_GR.ipynb
        
 <p>Currently, we are monitoring our data pipeline manually at critical steps. This includes checking the output of the CSV files after extracting, cleaning, merging, and normalizing processes in Python. We also verify the output of the relational tables to ensure that the database is accurate, and test queries. However, as the pipeline grows more complex, it may become challenging to monitor it manually. To address this, we can incorporate logging and alerts into the Python script and SQL (Grace, 2018). This would allow us to monitor the progress of the pipeline and receive notifications via email in case of any issues. By doing so, we can identify and address issues promptly, minimizing any downtime or data loss.

<p>References<p>
<p>Grace. (2018, December 15). GCP Checklist 6—Monitoring and Alerting (maintaining reliability). Google Cloud - Community. https://medium.com/google-cloud/gcp-checklist-6-monitoring-and-alerting-maintaining-reliability-5701a8b9e86f







