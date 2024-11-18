# Maryland High School Sports Championship Records Dataset - Golf

## Introduction

This repository contains historical championship data for Maryland high school
sports, compiled from Maryland Public Secondary Schools Athletic Association
(MPSSAA) records.

The contents of this folder include separate CSV files for the team and individual golf champions for MPSSAA schools between 1971-2023, as well as participation data.

## Contents
The dataset `championships.csv` contains the following columns:

- year: The year that the event took place (i.e., 2022).

- sport: The name of the sport (i.e., Golf).
- class: The classification associated with the winning school (i.e., “1A/2A,” “3A/4A”).   
- champ: Name of the season’s champion (i.e., “Poolesville”).
- score: Score earned by the championship-winning team (i.e., “576”).     
- finalist: Name of the runner-up school (i.e., “Marriotts Ridge”).     

The dataset `individuals.csv` contains the following columns:

-year: The year that the event took place (i.e., 2022).

- sport: The name of the sport (i.e., Golf).
- gender: The gender associated with the event (i.e., “Boys” or “Girls”).    
- class: The classification associated with the winning player’s school (i.e., “1A/2A,” “3A/4A”). 
- champ: Name of the winning player (i.e., “Helen Yeung”).
- school: The school name associated with the winning player (i.e., “River Hill”).
- score: Combined round score earned by the championship-winning player (i.e., “132”).

The dataset `participation.csv` contains the following columns:

- year: The year that the event took place (i.e., 2022).

- sport: The name of the sport (i.e., Golf).
- teams: The number of participating teams in a given year (i.e., 20).
- individuals: The number of participating individuals in a given year (i.e., 159).
- schools: The number of participating schools in a given year (i.e., 75).

## Methodology

### Data Collection/Organization

This data originates from the MPSSAA Fall Record Book (pgs. 46-52) (https://content.mpssaa.org/view/882541748/46/). Columns were created with the intent to organize the most data while minimizing the number of total columns.

We opted to keep participation data in a separate CSV to avoid potential duplicate values if placed in one of the other spreadsheets, considering there are multiple rows for certain years (especially between 2017 and 2023).

For conversion from the record book to a CSV file format, the data was copied into a text file, with each value placed in quotation marks and separated by commas. Here’s an example from the individual file: “2023,” “Helen Yeung,” “River Hill,” “132,” “3A/4A.”

Then, with the assistance of ChatGPT, we created a query asking for a CSV file output with specified columns. We uploaded text files for each event (teams, boys and girls) and identified to ChatGPT the order of the information listed in the files and how it should populate our desired columns. We handled each event separately and grouped data into CSV files based on events.

#### Here is an example of a query we submitted for the individual data:
Please take the information below and create a downloadable CSV. The columns are: year, sport, gender, classification, champ, school, score.

Here is an example from the provided data:
“2023,” “Girls,” “3A/4A,” “Helen Yeung,” “River Hill,” “132.” 
 
The "year" is "2023," the gender is “Girls,” the champ is "Helen Yeung," the school is "River Hill," the score value is "132," and the classification value is “3A/4A.”

Values for the class column begin in 1993 and are denoted by either "1A/2A," or "3A/4A." For class values before 1993, please populate them with NA. The sport column values are "Golf."

### Known Data Limitations

- Classification Changes: The current-day MPSSAA classification system for golf did not go into effect until 2017. Aside from 2003, where a one-day tournament used the current classification, all other years saw a single team champion and a single individual champion crowned.

### Missing Data/Caveats

- Missing Data: From 1971 to 1981, the MPSSAA either did not track female champions or did not hold female tournaments altogether, as there was no data available in the record book for that category. All missing data in each CSV is denoted with a “NULL” value. 
- Misaligned Finalist Classification: In the championship.csv file, finalists in a given row do not correspond with the row’s classification value. This is because there was not an equal 1:1 distribution between champions and finalists in the record book. Some years saw two or even three finalists; some of those exceptions had multiple finalists from the same classification and none matching the winner’s classification. All finalists, however, are matched with their correct year, but this decision was ultimately made to avoid nested cells for these values. We suggest that others who use this data refrain from grouping finalists by classification as it will lead to incorrect results.
- Classification Exceptions: The 2003 championship was conducted through a one-day tournament that crowned champions based on the current-day classification system. The current-day system did not go into effect until 2017.
- Inclement Weather/Condensed Tournaments: Inclement weather resulted in a one-day event with lower championship scores in 1977. In 2002 and 2005, the team and individual championships were also condensed. The 2005 tournament saw a three-way tie for the boys championship due to the weather. All classification state championships were canceled in 2020 due to the Covid-19 pandemic.
- Incorrect Data?: The 1990 season lists only 15 individuals having participated in the tournaments. Considering how low that number is compared to all other years, it could be a typo incorrectly printed in the record book. This requires confirmation from MPSSAA officials.
- Playoff Data: Currently, tournament-deciding playoffs are not specified in the CSV files. There are a few playoffs denoted with asterisks in the record book. A potential plan to include this data could be a binary column (i.e., column name: playoff, value: Y/N) followed by another column specifying the number of holes, if available.


---
*Last updated: November 2024*
