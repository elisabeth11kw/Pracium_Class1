Practicum Project Solar and Wind Energy

Elisabeth Wolfert elisabeth11kw@yahoo.com

Predict the Growth of Wind and Solar energy production.

Has wind and solar energy production increased in the past 10 years? 
Which states renewable energy growth rates are increasing at a higher rate?
What are common words used in articles from the https://www.greenpeace.org/ website?

Data Science tasks

Find current growth areas in renewable energy in the United States.
Find areas where there is potential for renewable energy growth in the United States.
Analyze were based on the population the greatest benefits for new renewable energy exist.
Analyze text in articles to find the common theme in renewable energy Data.
The current data source that I have is more than 33k records containing data from 50 states and 2 territories with data from 2011 to 2019.  I will do a web scrape on twitter to see and comments on renewable energy.  The data contains summary data with 87 different columns which I will summarize or remove columns if they do not add value.

1.1	Create Source Table 	Electricity_Net_Metering_by_Utility_in_US.csv	Primary Data source for project
1.2	Create Source Table 	Create table from csv.sql	Create table from csv file Electricity_Net_Metering_by_Utility_in_US.csv by state providing energy usage by state table Renew Database table "Renew"."Util_Energy" 
2.1	Create Source Table 	USPopulation.sql	Create table from csv file USPopulation.csv with population count by state
2.2	Source Data File	USPopulation.csv	Create tables for Wind Solar and US Population
3.1	Create Clean Table	insert soldback solar data.txt	Create table from csv file SolarPotential.csv with solar potential count by state
3.2	Source Data File	SolarPotential.csv	Create tables for Wind Solar and US Population
3.3	Create Source Table 	SolarPotential Table.sql	Create tables for Wind Solar and US Population
4.1	Create Source Table 	insert wind data .sql	Create table from csv file WindPotential.csv with wind potential count by state
4.2	Source Data File	Wind potential source	Create Wind potential source
4.3	Source Data File	WindPotential.csv	Create tables for Wind Solar and US Population
4.4	Create Clean Table	WindPotential.sql	Create tables for Wind Solar and US Population
5.1	Create Clean Table	create table summary.sql	Data Scripts With Summary Data for Reporting
6.1	Create Clean Table	Compare Potential to Actual.sql	Create tables for Wind Solar and US Population
7.1	Create Clean Table	Query File Wind Solar Data.sql	Renew Database table "Renew"."Util_Energy"
9.1	Tableau Report Data	Presentation Data 	Tableau Report Story Wind and Solar
10.1	Output Data File	Compare Actual to Potential.csv	Combined Potential Compared to Actual
10.2	Output Data File	Compare Actual to Potential33.csv	Updated Data source files
10.3	Output Data File	Wind Potential by State.csv	Wind potential by State
11.1	Output Data File	WindAndSolar33.csv	Updated Data source files
12.1	Python Script	Greenpeace_SpacyWordMap.py	Add files via upload
13.1	Rmarkdown Script	Solar and Wind by state.Rmd	R Markdown Scripts using R Studio
14.1	Rmarkdown Script	timeserieswindsolar.Rmd	R Markdown Scripts using R Studio

 
References:
Wind generation potential in the United States - Wikipedia
Sun Potential
Comparison of Solar Power Potential by State (ne.gov)
Electricity Net Metering by Utility in US | Colorado Information Marketplace | data.colorado.gov
Homepage - U.S. Energy Information Administration (EIA)
Form EIA-861M (formerly EIA-826) detailed data


