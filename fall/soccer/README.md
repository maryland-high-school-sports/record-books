# Maryland High School Sports Championship Records Dataset - Soccer

## Introduction

This repository contains historical championship data for Maryland high school sports, compiled from Maryland Public Secondary Schools Athletic Association (MPSSAA) records.
## Contents

The dataset `championships.csv` contains the following columns:

year: year of the tournament,	
sport: the sport played, which is soccer in this file,	
gender: girls or boys,
class: the schools are divided by class, so there are tournaments for each class,
champion: the winner of the championship game,
coach: the champion team's coach,
finalist: the second place team who lost the championship game,
opponent_coach: the finalist's coach,
team_score: the winning team's final score,
opponent_score: the finalist's final score,
notes: if the game ended in a tie or other details left out of the main columns

## Methodology

I created this file by sending images of the record book to ChatGPT and having the system read the image and create the table.

### Data Collection

The data comes from Maryland Public Secondary Schools Athletic Association's fall record book posted on their site.

### Data Organization

I organized the data by including all of the information listed for each championship in the record book.

### Caveats

Some of the years also included more than one team as the finalist, so there are some fields in that column with more than one school and/or coach listed.

### Known Data Limitations

Some of the fields in various columns may be empty because they were blank in the record book. Because it is historic data, not all of it is present to include in this data set. 

### Missing Data

For many of the years, the finalist was listed somewhere else in the record book and not under the main championship game. 

The 2020 season was cancelled due to the COVID-19 pandemic.

---
*Last updated: November 2024*  
