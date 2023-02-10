# Traffic_Analysis

## Overview

Car crashes are a cause of major concern. On average, 1.35 million people annually lose their lives in road accidents across the world while 20-50 million suffer non-fatal injuries. We live with the inherent risk of motorized travel, however with modern technology it’s worth exploring options that could potentially curb this alarming trend. Big data can be used to help decrease the number of car crashes by identifying risk hotspots and addressing the needs that correlate with those findings. With data and predictive machine learning, we will attempt to identify risk hotspots in Las Vegas, Nevada and create a predictive crash map that pinpoints high-risk areas. This map will make it possible to issue warnings to other drivers to be aware of these high-risk zones as well as shed insight into measures to increase road safety. With data analytics, we can take a modern approach to a modern problem and potentially reduce the amount of car crashes.

## Analysis

- Using [data obtained from NDOT](https://geohub-ndot.hub.arcgis.com/datasets/NDOT::crashdata-opendata/explore?location=38.279511%2C-116.977900%2C7.00&showTable=tr) (Nevada Department of Transportation) and the Las Vegas Police Department, we have identified a data source with 200k+ entries with 50+ potential data points each. This gives us a broad spectrum of information with which to create a compelling story about when and where crashes occur, but also to train our machine learning component with sufficient data to create a strong model for identifying risk factors and making predictions about where accidents might occur in the future.
- The original data set is stored as a .csv [here](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Resources/CrashData_OpenData.csv)
- We plan to compare the crash data with the population data of the counties, we found [county data information](https://www.census.gov/programs-surveys/popest/technical-documentation/research/evaluation-estimates/2020-evaluation-estimates/2010s-counties-total.htm) from census.gov

### Data Cleanup

Using the techniques we have learned throughout the program we are identifying which data categories are most likely to be important for our analysis. By removing columns that are too general to to provide valuable insight we are focusing on the data that will help us build a compelling story, a strong machine learning base, and to create interesting visuals. Eliminating null values by either adding an 'unknown' value to columns that might have some missing data allows us to use the remaining, important data in the column, and by removing rows that contain too many null values we can make sure we are using strong and reliable data to build our model.

Our [Cleaned data](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Resources/cleaned_traffic_data_nick.csv)
Our [Population data](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Resources/NV_county_population.csv)

- How can data analytics help reduce car crashes?
- What are the key factors that are common between high risk areas?
- Are areas with higher crach incidence also more dangerous for non-motorists?

### Communication Protocols

We are using google meet to have in person discussions outside of class time, a shared google drive to store links and information, as well has having created a GitHub repository that requires all of us to review and approve changes in order to merge onto the main branch. Our team has stayed in close contact abouty what each of us has been doing, and our next steps forward.

## Database Mockup

![ERD](https://github.com/JGarza4903/Traffic_Analysis/blob/main/Images/QuickDBD-export.png)

## Machine Learning Mockup

Using a supervised learning models and we will evaluate which areas are more likely to have crashes occur based on previous frequency of crashes, time of day, types of vehicles are involved, and the severity of injuries that occured we will be able to train our model to identify the highest risk areas and factors.
We have an outline of the ML process documented [here](https://github.com/JGarza4903/Traffic_Analysis/blob/main/machine_model_description.md)
and we have started coding the [model](https://github.com/JGarza4903/Traffic_Analysis/blob/main/machine_learning_model.ipynb) here.

## Conclusion

TBD

## Notes

1/30/2023

**Group**:

- Lara Bjork
- Nikko Bronzan
- Joe Peck
- Joshua Garza

**Traffic Crash Analysis:**

1. Heat map to show areas where more resources should be directed.
2. Maybe traffic accidents? \* Other categories?
   Vegas glitz! Clear neighborhoods/areas
   Existing map of crime by zip code from Vegas PD: maybe we can borrow / improve on it?

**Dashboard**

What to manipulate/make it interactive:
Can we get unprocessed data for Vegas? Yes!

**Data Links:**

[Las Vegas open data](https://opendataportal-lasvegas.opendata.arcgis.com/)

[Las Vegas Police Department open data](https://opendata-lvmpd.hub.arcgis.com/search?collection=Dataset)

[Las Vegas Police Department summary stats in PDF, links to maps, etc.](https://www.lvmpd.com/en-us/Pages/Statistics.aspx)
