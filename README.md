# ADS507-Team-8-Project
Main Goals: Find a dataset, build an ETL (Extract, Transform, Load) pipeline, and produce a practical output. 

Introduction: 

The final project will assess the development of a production-ready data pipeline. You will be assigned to groups by your instructor. You and your teammate(s) will work closely to find a dataset, build an ETL or ELT pipeline to process it, and produce a practical output from it. Example outputs might be a triggered email if some condition is met or a dashboard to visualize the data.

Final projects and datasets from prior courses cannot be used. It is required that you and your team use GitHub as a code hosting platform to manage version control and collaboration during this project.

Project Timeline:

Module 1 (by the end of Week 1): The course instructor will group students into teams of two to three members.

Module 3 (by the end of Week 3): Each team should have a concept for the project and several datasets identified. The team representative will need to submit the "Team Project Status Update Form" to describe the concept for the project and the data that will ultimately support the concept.

Module 5 (by the end of Week 5): The team will submit a status report as well as all materials developed to that point for instructor feedback. For the final submission, this feedback will have to be sufficiently addressed.

Module 7 (by the end of Week 7): Each team should submit the following deliverables for the course project in the final week:

    Design Document: One PDF document outlining your system architecture. This should describe the source data, the specifics of your pipeline ETL or ELT, and the output. It will also include “next steps” that outline any shortcomings of your current system and what could be done to improve it. Provide the link to your GitHub repository at the top of the Design Document.

    Demo Video: One ~15 minutes video presentation by all team members. Submit one mp4 file. This should be presented as a “demo day” presentation to a technical audience. You will present what your pipeline does, your system architecture, and how you interact with your system.

*It is critical to note that no extensions will be given for any of the final projects' due dates for any reason, and final projects submitted after the final due date will not be graded.


Project Datasets:

You will be responsible for finding multiple datasets for this final team project in this course. Several free data resources’ links are provided within the Resources page on the MS-ADS GitHub website.

Requirements:

Divide the work equally between the team members for the following steps, and everyone needs to code and review the code. You must use SQL to transform and load your datasets. The database engine you run this SQL code in should be MySQL. This project requires that you and your team submit a link to your GitHub repository containing your code, create a design document, and conduct a demo day video presentation.

For your GitHub repository and code:

  1. Your pipeline must be fully reproducible from the GitHub repository.
    Ideally, your pipeline is deployed using infrastructure as code (IaC)
    Document the deployment process in the README.
    Manual processes can be required in the deployment process, but these must be fully             documented in your README.

  2. Your pipeline must load data to a persistent data store.
    There are no restrictions on the type of data store.
    Your pipeline must include at least one SQL transformation of your data.

  3. You must address and incorporate any feedback provided by the instructor on your Module 5 status report.

  4. The README must include the following:
    An overview of the contents of the repository.
    How to deploy your pipeline.
    How to monitor your pipeline.

Optional Strongly Suggested Requirements:

    1. You must have a way to monitor your system.
    2. You should perform code reviews.
      Code reviews only become a requirement after Module 6 of the course.
    3. Your repository should be configured for continuous integration.
      Automated tests
      Linters
    4. Your pipeline should be triggered.
      The trigger can be time-based (e.g., run every day) or event-based (e.g., run whenever new data is uploaded).
      If your dataset is static, you should build a way to simulate data updates (e.g., load the data in chunks instead of all at once).

For your design document:

    You must provide the link to your GitHub repository at the top of the document.
    You must document your source datasets.
        Where did you find the dataset, and why did you choose it?
    You must document the output of your pipeline.
        Why is the output useful?
    You must include an architecture diagram.
        A Diagram of the final schema that was used must be present
    You should document the gaps in your system.
        Will the system scale as the dataset size grows?
        Is the system secure?
        Is the system extensible?

For your video presentation:

    Give a 10-15 minute presentation of your pipeline aimed at an audience of data engineers.
    Describe what your pipeline does at a high level.
    Present the architecture diagram and the core components of your system.
    Show how you interact with the system.
        How is the source dataset ingested?
        How do you view the output?
        How do you monitor the pipeline while it is running?


Project Deliverables and Submission Format:

Prepare and submit your Design Document in PDF format.
Include a link to your GitHub repository at the top of the design document.
Prepare a recorded video presentation of your project using a screencasting tool, such as Screencast-O-Matic or Zoom, to record your screen and provide a voice narration.

Ensure that the sound quality of your video is good and each member presents an equal portion of the presentation.

Export the video file to an mp4 format.

You may use any recording software you wish. You may want to utilize Screencast-O-Matic, which is integrated with Blackboard and linked below. You can access it using your USDOne account login. View the  Recording Video Presentation and Submission Guidelines for MS-ADS Students  Click for more options guide for additional recording instructions.


Submit the ~15 minutes presentation mp4 video file and Design Document PDF file on the final team project submission page of Blackboard (Bb). You will use the naming convention Final-Project-Report-Team-Number.ext (e.g., Final-Project-Report-Team-1.pdf and Demo-Presentation-Team-1.mp4). Only one member of your team will need to submit these deliverables.
