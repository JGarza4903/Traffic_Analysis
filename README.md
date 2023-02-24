# Las Vegas Crash Data

## Overview

Car crashes are a cause of major concern. On average, 1.35 million people annually lose their lives in road accidents across the world while 20-50 million suffer non-fatal injuries. We live with the inherent risk of motorized travel, however with modern technology it’s worth exploring options that could potentially curb this alarming trend. Big data can be used to help decrease the number of car crashes by identifying risk hotspots and addressing the needs that correlate with those findings. With data and predictive machine learning, we will attempt to identify risk hotspots in Las Vegas, Nevada and create a predictive crash map that pinpoints high-risk areas. This map will make it possible to issue warnings to other drivers to be aware of these high-risk zones as well as shed insight into measures to increase road safety. With data analytics, we can take a modern approach to a modern problem and potentially reduce the amount of car crashes.

Our initial questions consisted of the following:

- How can data analytics help reduce car crashes?
- What are the key factors that are common between high risk areas, conditions, and driver behaviors?
- Are areas with higher crash incidence also more dangerous for non-motorists?

## To Run This Project Yourself

### Prerequisites / Dependencies
* Python 3.7 or higher
* PostgreSQL 11 / pgAdmin 4
* NumPy, version 1.11 or later
* Scikit-learn, version 0.21 or later
* Pandas
* psycopg2

### Quickstart Guide
1. Clone this repository locally
2. Create and activate a virtual environment
3. Create a database in pgAdmin, using this [schema](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Resources/schema.sql)
4. Create a secret.py file with your database login information (you will need to store host, database, user, and password)
5. Go to the machine learning folder and open any of the four notebooks (either in VS Code or Jupyter Lab/Notebook)

## Analysis

- Using [data obtained from NDOT](https://geohub-ndot.hub.arcgis.com/datasets/NDOT::crashdata-opendata/explore?location=38.279511%2C-116.977900%2C7.00&showTable=tr) (Nevada Department of Transportation) and the Las Vegas Police Department, we identified a data source with 200k+ entries with 50+ potential data points each. This gives us a broad spectrum of information with which to create a compelling story about when and where crashes occur, but also to train our machine learning component with sufficient data to create a strong model for identifying risk factors and making predictions about where crashes might occur in the future.

- The original data set is stored as a .csv [here](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Resources/CrashData_OpenData.csv)
- The Nevada Traffic Records Commission [data dictionary](https://zerofatalitiesnv.com/app/uploads/2021/04/2021-01-NV-TRCC-Data-Dictionary.pdf) explained the meaning of each column.
- We are comparing the crash data with the population data of the counties. We obtained the [county data information](https://www.census.gov/programs-surveys/popest/technical-documentation/research/evaluation-estimates/2020-evaluation-estimates/2010s-counties-total.htm) from census.gov.

### Data Cleanup

Using the techniques we have learned throughout the program, we identifyied which data categories are most likely to be important for our analysis. By removing columns that are too general to to provide valuable insight we are focusing on the data that will help us build a compelling story, a strong machine learning base, and to create interesting visuals. Eliminating null values by either adding an 'unknown' value to columns that might have some missing data allows us to use the remaining, important data in the column, and by removing rows that contain too many null values we can make sure we are using strong and reliable data to build our model. Where driver age was blank, we filled in the average age.

Our [cleaned traffic data](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Analysis/cleaned_traffic_data.csv)

Our [cleaned population data](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Analysis/Nevada_population_clean_1.csv)


### Communication Protocols

We used Google Meet to have in-person discussions outside of class time and a shared Google Drive to store background information and a project task list. This GitHub repository required three reviews in order to merge onto the main branch. Our team stayed in close contact, especially via Slack, about what each of us has been doing and our next steps forward.

## Database

After our data cleanup was complete, we created an entity relationship diagram using quickdatabasediagrams.com. 

![ERD](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Images/QuickDBD-export%20(1).png)

We imported that [schema](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Resources/schema.sql) into pgAdmin4 to create a PostgreSQL database and then loaded our cleaned traffic data and population data into separate tables. Since the database is not hosted, each team member made a local instance of it. 

## Machine Learning Model

We connected our database to our machine learning model using psycopg2, with database login information stored in each user's secret.py file.

We used Random Forest Classifier, a supervised learning model, to evaluate which areas are more likely to have crashes occur based on previous frequency of crashes, time of day, types of vehicles are involved, and the severity of injuries that occurred. Our goal was to train our model to identify the highest risk factors so that we could predict crash severity. We removed columns that were extraneous (unique identifiers and street names).

The dataset included several columns that dealt with crash results. We created two versions of our model, identical except for the target. In one, we used the "injury_type" column (6 possible values); in the other, we used the "crash_severity" column (3 possible values). To prevent overfitting, we removed columns  with the number of fatalities and the number of injured people. When we used "injury_type" as the target, we also dropped the "crash_severity" column and vice versa . Although the Nevada data dictionary specified that "property damage only" is a possible value in the "injury_type" column, our dataset had that information in a separate column. For crashes that recorded property damage only, we replaced the value in the "injury_type" column (recorded as "unknown") with "PDO", so that all crash results would be consolidated within the injury_type column.

Our machine learning model files contain the following:
* Injury type as target, statewide data, 3 versions (all features, top 50% of features, top 17 features)
* Crash severity as target, statewide data, 3 versions (all features, top 50% of features, top 17 features)
* Injury type as target, Clark County data only, 1 version (all features)
* Crash severity as target, Clark County data only, 1 version (all features)

### Machine Learning Model Results

Our major takeaways:
* The model performed better with the simpler target of crash_severity (3 possible values) than with injury_type (6 possible values); this held true regardless of how many features/importances were used and regardless of the geographic scope.
* The highest-ranking importances were consistent across models: location, driver age, and date/time.
* Crashes involving property damage only were more consistently predicted than injury or fatality crashes. With injury_type, less severe injuries ("possible injury") were more consistently predicted than the more severe categories ("minor injury" and "major injury").

As of February 23, 2023, our model produced the following results. 
![Confusion matrix, accuracy score, and classification report; injury type as target](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Images/mlm_injury_type_results_2022_02_23.png)

![Confusion matrix, accuracy score, and classification report; crash severity as target](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Images/mlm_crash_severity_results_2022_02_23.png)

Our next steps are to determine which factors should be excluded from the model, based on the calculated importances, and to incorporate our results into our presentation.

## Data Visualizations

We created a [presentation in a Tableau Story](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Tableau/Presentation-1.twb) to explain our project. It also includes embedded Google Slides. Among the Tableau visualizations produced, these two interactive dashboards allow users to apply numerous filters to understand patterns in traffic crashes in Las Vegas.

![Dashboard with interactive map of Las Vegas](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Images/dashboard_1.png)
![Dashboard with multiple visualizations of Las Vegas traffic data](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Images/dashboard_2.png)

## Conclusion
This project has a real-world application regarding traffic safety in the Las Vegas area and surrounding Clark County. Our group’s ability to extract, transform and load crash data from the Nevada Department of Transportation in a way that could be processed through the programs and languages we used created tools that could be applied in a predictive model as well as an interactive map that could be understood at a high level. Within the scope of our research the group has showcased numerous patterns that could shed light on more extensive research. 



