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
    
    
    <ul>
<li><p>Bird</p></li>
<li><p>Magic</p></li>
</ul>
    
### Feature description:

<li>age: patient age<li>		
<li>air_polution: level of air pollution	<li>
<li>alcohol_use: level of alcohol use<li>	
<li>balanced_diet: level of balanced diet<li>	
<li>bmi_cat: (low, normal, and high)<li>	
<li>cancer_level: level of cancer<li>	
<li>charge_level: level of insurance charges (1: 0- <5k, 2: 5K- <10K, 3: 10K<15K, 4:>15K)<li>
<li>chest_pain: level of chest pain<li>	
<li>children: patient’s number of child	<li>
<li>chronic _lung_disease: level of chronic lung disease<li>
<li>clubbing_of_finger_nails: level of clubbing of finger nails<li>
<li>coughing_of_blood: level of coughing of blood<li>
<li>dry_cough: level of dry cough<li>	
<li>dust_allergy: level of dust allergy	<li>
<li>fatigue: level of fatigue<li>		
<li>frequent_cold: level of frequent cold<li>	
<li>gender: (1: male, 2: female)<li>	
<li>genetic_risk: level of genetic risk	<li>
<li>occupational_hazards: level of occupational hazards<li>
<li>region: region of residence	<li>
<li>shortness_of _breath: level of shortness of breath<li>
<li>smoker: whether patient is a smoker	<li>
<li>snoring: level of snoring	<li>
<li>swallow_difficulty: level of swallow difficulty<li>
<li>weight_lost: level of weight lost<li>	
<li>wheezing: level of wheezing	<li>




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







