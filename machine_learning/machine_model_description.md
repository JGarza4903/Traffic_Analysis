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

## What kind of problem are we facing? What algorithm will we use?
We are facing a predictive/risk analysis problem. We know that it's more complex than a binary classification. We are planning on using the random forest classification algorithm.
	



 
