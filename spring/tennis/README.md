# Maryland High School Sports Championship Records Dataset - Tennis

## Introduction

This repository contains historical championship data for Maryland high school
sports, compiled from Maryland Public Secondary Schools Athletic Association
(MPSSAA) records.

The contents of this folder include separate CSV files for team, singles and doubles tennis champions for MPSSAA schools between 1975-2023.

## Contents
The dataset `championships.csv` contains the following columns:

- year: The year that the event took place (i.e., 1981).

- sport: The name of the sport (i.e., Tennis).
- class: The classification associated with the winning school (i.e., “District II,” “Region III,” “3A”).   
- champ: Name of the season’s champion (i.e., “Baltimore County,” “Walt Whitman”).
- coach: Names of the championship-winning school coaches (i.e., “Hal McVeigh”).
- c_score: Score earned by the championship-winning team (i.e., “55”).     
- finalist: Name of the runner-up school (i.e., “Frederick Douglass”).     
- f_coach: Names of the runner-up school coaches (i.e., “Brian Wilson”).   
- f_score: Score earned by the runner-up school (i.e., “38”).

The dataset `singles.csv` contains the following columns:

- year: The year that the event took place (i.e., 1981).

- sport: The name of the sport (i.e., Tennis).
- gender: The gender associated with the event (i.e., “Boys” or “Girls”).    
- class: The classification associated with the winning player’s school (i.e., “3A”). 
- champ: Name of the winning player (i.e., “Joseph Brailovsky”).
- school: The school name associated with the winning player (i.e., “Thomas S. Wootton”).
- score: Match score earned by the championship-winning player (i.e., “6-2, 3-6, 7-5”).

The dataset `doubles.csv` contains the following columns:

- year: The year that the event took place (i.e., 1981).

- sport: The name of the sport (i.e., Tennis).
- gender: The gender associated with the event (i.e., “Boys,” “Girls” or “Mixed”).    
- class: The classification associated with the winning team’s school (i.e., “3A”). 
- player1: The name of the first listed doubles partner in the record book (i.e., “Andrew Wu”).        
- player2: The name of the second listed doubles partner in the record book (i.e., “Ethan Han”). 
- school: The school name associated with the winning doubles players (i.e., “Winston Churchill”).
- score: Match score earned by the championship-winning team (i.e., “6-3, 6-2”).

## Methodology

### Data Collection/Organization

This data originates from the MPSSAA Spring Record Book (pgs. 28-32) (https://content.mpssaa.org/view/882333632/). Columns were created with the intent to organize the most data while minimizing the number of total columns.

For conversion from the record book to a CSV file format, the data was copied into a text file, with each value placed in quotation marks and separated by commas. Here’s an example from the boy’s singles file: “2021,” “Noah Fisher,” “Stephen Decatur,” “6-2, 6-0,” “2A.”

Then, with the assistance of ChatGPT, we created a query asking for a CSV file output with specified columns. We uploaded text files for each event (teams, singles and doubles) and identified to ChatGPT the order of the information listed in the files and how it should populate our desired columns. We handled each event separately and grouped data into CSV files based on events.

#### Here is an example of a query we submitted for the boy’s doubles data:
Please take the information below and create a downloadable CSV. The columns are: year, sport, gender, class, player1, player2, school, score.

Here is an example from the provided data:
“1980,” “Boys,” “Daryl Kimche,” “Richard Hoe,” “Walt Whitman,” “6-2, 6-1” 
 
The "year" is "1980," the gender is “Boys,” player1 is "Daryl Kimche," player2 is “Richard Hoe,” the school is "Walt Whitman," and the score value is "6-2, 6-1."

Values for the class column begin in 2019 and are denoted by either "1A," "2A," "3A," or "4A." For class values before 2019, please populate them with NA. The sport column values are "Tennis."

### Known Data Limitations
- Classification Changes: The MPSSAA classification system for tennis between the years 1975 and 2015 does not follow the conventional 1A-4A system it currently uses. Instead, it refers to “Districts” and “Regions” before switching over. 
- Nested Data: Three rows in the “champ” and “f_coach” columns and ten rows in the “coach” column contain multiple values in one cell. Score values are also technically nested as each year's match score (set and tiebreaker) is condensed into one cell on each row.

### Missing Data
- Unidentified Schools: From 1975 to 2015, championship teams are denoted by their home county or region rather than the individual school’s name.
- Missing Data: From 1975 to 2015, no values were provided to populate the coaches, scores and finalist columns.
- Missing Years: There were no team championships awarded between 2016-2018, according to the record book. Also, championship tournaments for all events were canceled during the 2020 season due to the Covid-19 pandemic.

---
*Last updated: November 2024*
