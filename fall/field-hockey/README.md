# Maryland High School Sports Championship Records Dataset - Field Hockey

## INTRODUCTION

This repository contains historical championship data for Maryland high school
sports, compiled from Maryland Public Secondary Schools Athletic Association
(MPSSAA) records.

## CONTENTS

The dataset `championships.csv` contains the following columns:

Year - The year of the championship match
Team - The name of the school competing in the championship
Status - This describes whether a team is a champion, a finalist or a semifinalist each year
Class - The class of the team that won the championship

The dataset `individuals.csv` contains the following columns to display the coaches with at least three state championships:

Coach Name - The name of the coach that has won at least three state championships
Number of State Titles - The total number of state titles a coach has won at a certain school
School - The name of the school that each coach won their state titles at

## Methodology

### Data Collection/Organization

The MPSSAA fall record book lists each school and the years they've won a field hockey state championship, been a finalist or been a semifinalist. I used the ChatGPT 4o AI model to take the data listed in the record books and create a csv file to display the information. I told the machine to create a new csv file with the column heads, and then told it to fill in the information from the record book into the csv file. 

### Caveats

`championships.csv`

There was only class data listed for the champions of each year. For finalists and semifinalists, no class data was listed in the MPSSAA record books.

`individuals.csv`

The only individual information for field hockey was coach data. There were no records for any athletes in the championship record books.



