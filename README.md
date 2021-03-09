[Solar and Wind Energy.docx](https://github.com/elisabeth11kw/Renewable-Energy/files/6102252/Solar.and.Wind.Energy.docx)

# Renewable-Energy
# Practicum Project Solar and Wind Energy

Elisabeth Wolfert elisabeth11kw@yahoo.com

## Predict the Growth of Wind and Solar energy production.

*	Has wind and solar energy production increased in the past 10 years? 
* Which states renewable energy growth rates are increasing at a higher rate?
*	What are common words used in articles from the https://www.greenpeace.org/ website?

## Data Science tasks

*	Find current growth areas in renewable energy in the United States.
*	Find areas where there is potential for renewable energy growth in the United States.
* Analyze were based on the population the greatest benefits for new renewable energy exist.

Analyze text in articles to find the common theme in renewable energy Data.  Do research of website for data source and document data.  Research wind and solar potentials in the united states.  The current data source that I have is more than 33k records containing data from 50 states and 2 territories with data from 2011 to 2019.  

I will do a web scrape on twitter to see and comments on renewable energy.  The data contains summary data with 87 different columns which I will summarize or remove columns if they do not add value.

* ** I was unable to get a developer account on twitter before the end of the project.  I coppied several articles on solar and wind to create a text file that I examined.

## Data Source

Loaded data file in to postgress sql database as table.  Converted the crosstab file data into a data format with date, concatinating month and year to date.  Then created query to pull data to be formated by Type Solar or Wind.  Com_type reneable energy souce.  Total equaled enegy megawats of power.  I had recreate the data source a couple times before the data worked correctly.  Loaded the data into a PostGreSQL table and create some summary data, eliminate blank or columns with a total of zero on the whole column.  Gain a better understanding of terms in the file by finding word definitions on the data.  



1.1	Create Source Table 	Electricity_Net_Metering_by_Utility_in_US.csv	Primary Data source for project

3.2	Create Source Table 	Create table from csv.sql	Create table from csv file Electricity_Net_Metering_by_Utility_in_US.csv by state providing energy usage by state table Renew Database table "Renew"."Util_Energy" 

5.1	Create Source Table 	USPopulation.sql	- Create table from csv file USPopulation.csv with population count by state

## Source Data Files

*	First, I will use some exploratory data analysis to explain the data.  
*	Run some queries to view data and summarize for reporting.
*	Comparison of energy to population and commercial energy use vs. residential. 
* Compare the population in the united states by pulling population counts by state compared to wind and solar power potential by location.

2.2	Source Data File	USPopulation.csv	- Create tables for Wind Solar and US Population

4.1	Create Clean Table	insert soldback solar data.txt	- Create table from csv file SolarPotential.csv with solar potential count by state

6.2	Source Data File	SolarPotential.csv	- Create tables for Wind Solar and US Population

8.3	Create Source Table 	SolarPotential Table.sql	- Create tables for Wind Solar and US Population

10.1	Create Source Table 	insert wind data .sql	- Create table from csv file WindPotential.csv with wind potential count by state

12.2	Source Data File	Wind potential source	- Create Wind potential source

14.3	Source Data File	WindPotential.csv	- Create tables for Wind Solar and US Population

## Cleaned Data

The output data source used in R- studio and the Tableau reports took a couple discovery re evaluation but found in the end the data worked to created valid reports.

4.4	Create Clean Table	WindPotential.sql	- Create tables for Wind Solar and US Population

6.1	Create Clean Table	create table summary.sql	- Data Scripts With Summary Data for Reporting

8.1	Create Clean Table	Compare Potential to Actual.sql	- Create tables for Wind Solar and US Population

10.1	Create Clean Table	Query File Wind Solar Data.sql	- Renew Database table "Renew"."Util_Energy"


## Tableau Report Data

*	Create some Tableau reports from the data for visualizations such as a map, bar charts, scatter grams and bar plots and time series graph.   
*	data visualization – Graphs showing which states have increased wind and solar energy, which states are using wind and solar energy, which states have increased wind and solar energy demand and decreased other energy.

9.1	Tableau Report Data	Presentation Data  -	Tableau Report Story Wind and Solar

## Output Data

*	Compare the population in the united states by pulling population counts by state compared to wind and solar power potential by location.

10.1	Output Data File	Compare Actual to Potential.csv	- Combined Potential Compared to Actual

12.2	Output Data File	Compare Actual to Potential33.csv	- Updated Data source files

14.3	Output Data File	Wind Potential by State.csv- Wind potential by State

16.1	Output Data File	WindAndSolar33.csv	- Updated Data source files

## Python Script

Created python script to scrape web site greenpeace.org but had dificulty with site tags.  I think that some websites may be more in an html format over other sites that have objects making scraping data more complex.  Python data sweep to gather data for solar and wind power energy to see where there are locations that do not have solar or wind power currently that could generate power in the future.


12.1	Python Script	Greenpeace_SpacyWordMap.py	- Add files via upload

## R Markdown R Studio

*	I will use R Studio to do some supervised learning of the data and prediction analysis.
*	Create models using R studio for linear regression and Two Way Anova test to see if there is any correlation based on location for wind power and solar renewable energy locations.

*	Do a logistical regression model to test if there is a rise in solar and wind power.
*	Run a two-way a nova test to see if there is a correlation between power usage of solar and wind energy and state population.

13.1	Rmarkdown Script	Solar and Wind by state.Rmd	- R Markdown Scripts using R Studio

15.1	Rmarkdown Script	timeserieswindsolar.Rmd	- R Markdown Scripts using R Studio

# References

* My Account - Windsource® (xcelenergy.com)https://www.cnbc.com/2019/10/31/us-wind-energy-capacity-now-over-100-gigawatts-says-new-report.html
* http://www.bionomicfuel.com/benefits-of-windmill-energy/https://www.cnbc.com/2020/10/14/facebook-to-use-ai-in-bid-to-improve-renewable-energy-storage.htmlYears of Living 
* Dangerously: Climate Change Deniers and Kansas Wind Energy – 
* Greenpeace USAYears of Living Dangerously Season 1: Episode 6 Clip - Droughts – YouTube
* solar energy pictures photos – Bing
* 10 Advantages of Solar Energy, Benefits of Solar Energy (linquip.com)
* New Colorado laws could help shift state away from carbon emissions - Denver Business Journal
* renewable energy - Bing images
* Electricity Net Metering by Utility in US | Colorado Information Marketplace | data.colorado.gov
* 1543436651044.jpg (500×308) (azureedge.net)
* Electricity Net Metering by Utility in US | Colorado Information Marketplace | data.colorado.gov
* Wind generation potential in the United States - Wikipedia
* * https://en.wikipedia.org/wiki/Wind_generation_potential_in_the_United_States#:~:text=Wind%20Capacity%20Potential%20and%20Annual%20Generation%20%20,%20%20272%20%2010%20more%20rows

* https://www.instituteforenergyresearch.org/renewable-mandates/
* Sun Potential
* https://neo.ne.gov/programs/stats/inf/201.htm
* Renewable Electricity Mandates and Goals - IER (instituteforenergyresearch.org)
* Electricity Net Metering by Utility in US | Colorado Information Marketplace | data.colorado.gov
* https://data.colorado.gov/Energy/Electricity-Net-Metering-by-Utility-in-US/4jjg-g3yq
* ![image](https://user-images.githubusercontent.com/60304531/110484837-4545de80-80a8-11eb-9d55-7fee533630ee.png)



