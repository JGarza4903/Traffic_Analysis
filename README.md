# Traffic_Analysis

## Overview

Car crashes are a cause of major concern. On average, 1.35 million people annually lose their lives in road accidents across the world while 20-50 million suffer non-fatal injuries. We live with the inherent risk of motorized travel, however with modern technology it’s worth exploring options that could potentially curb this alarming trend. Big data can be used to help decrease the number of car crashes by identifying risk hotspots and addressing the needs that correlate with those findings. With data and predictive machine learning, we will attempt to identify risk hotspots in Las Vegas, Nevada and create a predictive crash map that pinpoints high-risk areas. This map will make it possible to issue warnings to other drivers to be aware of these high-risk zones as well as shed insight into measures to increase road safety. With data analytics, we can take a modern approach to a modern problem and potentially reduce the amount of car crashes.

Our initial questions consisted of the following:

- How can data analytics help reduce car crashes?
- What are the key factors that are common between high risk areas?
- Are areas with higher crash incidence also more dangerous for non-motorists?

## Analysis

- Using [data obtained from NDOT](https://geohub-ndot.hub.arcgis.com/datasets/NDOT::crashdata-opendata/explore?location=38.279511%2C-116.977900%2C7.00&showTable=tr) (Nevada Department of Transportation) and the Las Vegas Police Department, we have identified a data source with 200k+ entries with 50+ potential data points each. This gives us a broad spectrum of information with which to create a compelling story about when and where crashes occur, but also to train our machine learning component with sufficient data to create a strong model for identifying risk factors and making predictions about where accidents might occur in the future.

- The original data set is stored as a .csv [here](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Resources/CrashData_OpenData.csv)
- The Nevada Traffic Records Commission [data dictionary](https://zerofatalitiesnv.com/app/uploads/2021/04/2021-01-NV-TRCC-Data-Dictionary.pdf) explained the meaning of each column.
- We are comparing the crash data with the population data of the counties. We obtained the [county data information](https://www.census.gov/programs-surveys/popest/technical-documentation/research/evaluation-estimates/2020-evaluation-estimates/2010s-counties-total.htm) from census.gov.

### Data Cleanup

Using the techniques we have learned throughout the program, we identifyied which data categories are most likely to be important for our analysis. By removing columns that are too general to to provide valuable insight we are focusing on the data that will help us build a compelling story, a strong machine learning base, and to create interesting visuals. Eliminating null values by either adding an 'unknown' value to columns that might have some missing data allows us to use the remaining, important data in the column, and by removing rows that contain too many null values we can make sure we are using strong and reliable data to build our model.

Our [cleaned traffic data](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Analysis/cleaned_traffic_data.csv)

Our [cleaned population data](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Analysis/Nevada_population_clean_1.csv)


### Communication Protocols

We are using Google meet to have in person discussions outside of class time and a shared Google drive to store links and information. Our   GitHub repository requires three reviews in order to merge onto the main branch. Our team has stayed in close contact, especially via Slack, about what each of us has been doing and our next steps forward.

## Database

After our data cleanup was complete, we created an entity relationship diagram using quickdatabasediagrams.com. 

![ERD](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Images/QuickDBD-export.png)

We imported that [schema](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Resources/schema.sql) into pgAdmin4 to create a PostgreSQL database and then loaded our cleaned traffic data and population data into separate tables. Since the database is not hosted, each team member made a local instance of it. 

## Machine Learning Model

We connected our database to our machine learning model using psycopg2, with database login information stored in each user's secret.py file.

We used Random Forest Classifier, a supervised learning model, to evaluate which areas are more likely to have crashes occur based on previous frequency of crashes, time of day, types of vehicles are involved, and the severity of injuries that occurred. Our goal was to train our model to identify the highest risk factors.

Our initial outline of the machine learning model is documented [here](https://github.com/JGarza4903/Traffic_Analysis/blob/main/machine_model_description.md), while the the code for the model is [here](https://github.com/JGarza4903/Traffic_Analysis/blob/main/machine_learning_model.ipynb). 

As of February 16, 2023, our model produced the following results:
![Confusion matrix, accuracy score, and classification report](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Images/mlm_results_2022_02_16.png)

Our next steps are to determine which factors should be excluded from the model, based on the calculated importances, and to incorporate our results into our presentation.

## Conclusion

TBD


