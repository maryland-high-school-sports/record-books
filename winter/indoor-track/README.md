# Maryland High School Sports Championship Records Dataset - Indoor Track

## INTRODUCTION

This repository contains historical championship data for Maryland high school
sports, compiled from Maryland Public Secondary Schools Athletic Association
(MPSSAA) records.

## CONTENTS

The dataset `championships.csv` contains the following columns:

Year - The year of the championship match
Team - The name of the school competing in the championship
Status - This describes whether a team is a champion, a finalist or a semifinalist each year
Sport - Lists that the sport is Indoor Track
Gender - Indoor Track has records for both boys and girls, this column lists if the record is for Girls Indoor Track or Boys Indoor Track
Class - The class of the team that won the championship

## Methodology

### Data Collection/Organization

The MPSSAA winter record book lists each school and the years they've won a indoor track state championship or have been a finalist. I used the ChatGPT 4o AI model to take the data listed in the record books and create a csv file to display the information. I told the machine to create a new csv file with the column heads, and then told it to fill in the information from the record book into the csv file. 

### Caveats

`championships.csv`

There is no information for semifinalists, only champions and finalists. The class system changes periodically for indoor track, while some schools jump up and down class ranks from different years.



