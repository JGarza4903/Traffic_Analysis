# Machine Learning Model Mock-up

## What is the main objective? 
Our goal for this machine learning model is to use data to predict crash severity based on:
* Driver Score (distracted, drunk, young, old, etc...)
* Location (some areas are inherently more dangerous than others)
* Conditions (time of day, wet/dry, etc...)

## What is the target feature?
The target feature that we will focus on is crash severity, based on the injury category of the most serious injury (Fatal Injury, Suspected Serious Injury, Suspected Minor Injury, Possible Injury, Property Damage Only, Unknown , or Not Reported). 

## What is the input data?
Our input data includes the following types of information:

* Latitude and longitude of the crash
* Date the crash occurred
* Weather conditions
* Number of fatalities that occurred due to the crash
* Number of injuries due to the crash
* Classification of the crash type
* Total number of vehicles involved in the crash
* Body style of the vehicles in the crash
* Ages of the drivers
* Actions the vehicles were taking at the time of the crash 
* Driver related factors and distractions that may have contributed to the crash 
* Event deemed most harmful leading up to the crash
* Factors related to the action of nonmotorists such as pedestrian, cyclist, scooter, animals, or other 
* Factors related to the roadway that may have contributed to the crash (Dry, Ice/Snow, Wet, etc.)
* Lighting conditions at the time of the crash
* Highway factors that may have contributed to the crash

## What kind of problem are we facing?
We are facing a predictive/risk analysis problem. We know that it's more complex than a binary classification. We are planning on trying multiple supervised learning models to see which one delivers the best performance. Options include:
* Logistic regression
* Random forest classification
* Optimal classification trees?
* XGBoost?

## What is the expected improvement?
The expected improvement that we are trying to achieve is an interactive map that shows Las Vegas locals where the frequency and severity of accidents occur.

## What is the current status of the target feature?
The status of the target feature is well defined and established as the focal point of our project.

## How is the target feature going to be measured?
The target feature has three string measurements: property damage only, injury crash and fatal crash.


Not every problem can be solved, until we have a working model, we just can make certain hypothesis:
	Our outputs can be predicted given the inputs.
	Our available data is sufficient and informative to learn the relationship between the inputs and the outputs.
	



 
