# Maryland High School Sports Championship Records Dataset - Track and Field

## Introduction

This repository contains historical championship data for Maryland high school sports, compiled from Maryland Public Secondary Schools Athletic Association (MPSSAA) records.
## Contents

The dataset `championships.csv` contains the following columns:

year: year of the tournament	
sport: the sport played, which is track and field in this file
gender: girls or boys
class: the schools are divided by class, so there are tournaments for each class
champion: the winner of the championship meet
coach: the champion team's coach
finalist: the second place team who lost the championship meet
opponent_coach: the finalist's coach
team_score: the winning team's final score
opponent_score: the finalist's final score
notes: if the game ended in a tie or other details left out of the main columns

## Methodology

I created this file by sending images of the record book to ChatGPT and having the system read the image and create the table.

### Data Collection

The data comes from Maryland Public Secondary Schools Athletic Association's fall record book posted on their site.

### Data Organization

I organized the data by including all of the information listed for each championship in the record book.

## Caveats

For some columns, the tie is listed in the notes column, but in others, it is listed under both the team_score and opponent_score. 

### Known Data Limitations

Because this is historic data, not all of the information is available in the record books to include, like coach names or scores. 

### Missing Data

The 2020 season was cancelled due to the COVID-19 pandemic.

---
*Last updated: November 2024*  
