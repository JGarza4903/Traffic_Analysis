CREATE TABLE Clark_Co_Traffic (
    X DECIMAL,
    Y DECIMAL, 
    OBJECTID INT PRIMARY KEY UNIQUE,
    Crash_Severity VARCHAR(100),
    County VARCHAR(100),
    Crash_Date DATE,
    Crash_Year INT,
    Crash_Time VARCHAR(100),
    Weather VARCHAR(100),
    Fatalities INT,
    Injured INT,
    Property_Damage_Only VARCHAR(100),
    Injury_Type VARCHAR(100),
    Crash_Type VARCHAR(100),
    Total_Vehicles INT,
    V1_Type VARCHAR(100),
    V1_Driver_Age INT,
    V1_Action VARCHAR(100),
    V1_Driver_Factors VARCHAR(500),
    V1_Driver_Distracted VARCHAR(500),
    V1_Vehicle_Factors VARCHAR(500),
    V1_Most_Harmful_Event VARCHAR(500),
    V1_All_Events VARCHAR(500),
    V2_Type VARCHAR(100),
    V2_Driver_Age INT,
    V2_Action VARCHAR(100),
    V2_Driver_Factors VARCHAR(500),
    V2_Driver_Distracted VARCHAR(500),
    V2_Vehicle_Factors VARCHAR(500),
    V2_Most_Harmful_Event VARCHAR(500),
    V2_All_Events VARCHAR(500),
    Nonmotorist_Factors VARCHAR(500),
    Factors_Roadway VARCHAR(100),
    Lighting VARCHAR(100),
    HWY_Factors VARCHAR(500),
    Accident_Rec_Num INT,
    Pedalcyclist VARCHAR(100),
    Pedestrian VARCHAR(100),
    Motorcyclist VARCHAR(100),
    AnimalType VARCHAR(100)
);

CREATE TABLE County_Population (
    ID INT,
    County VARCHAR(100) PRIMARY KEY UNIQUE,
    Population_2015 INT,
    Population_2016 INT,
	Population_2017 INT,
	Population_2018 INT,
	Population_2019 INT,
	Population_2020 INT
);


SELECT * FROM Clark_Co_Traffic;
SELECT * FROM  County_Population;