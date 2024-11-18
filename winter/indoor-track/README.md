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

The dataset `individuals.csv` contains the following columns:

Gender -  Indoor Track has records for both boys and girls, this column lists if the record is for Girls Indoor Track or Boys Indoor Track
Sport - Lists that the sport is Indoor Track
Event - Which event it is for the top performances
Athlete - Lists which athlete holds the record. If it is N/A, it is a team event
School - The school the winning athlete or team attends
Year - What year the record happened
Time - The time the athlete or team finished the event
Distance - The height or distance the athlete completed the event in

## Methodology

### Data Collection/Organization

The MPSSAA winter record book lists each school and the years they've won a indoor track state championship or have been a finalist. I used the ChatGPT 4o AI model to take the data listed in the record books and create a csv file to display the information. I told the machine to create a new csv file with the column heads, and then told it to fill in the information from the record book into the csv file. 

### Caveats

`championships.csv`

There is no information for semifinalists, only champions and finalists. The class system changes periodically for indoor track, while some schools jump up and down class ranks from different years.

`individuals.csv`

This information is the top-10 performances in each event for both boys and girls from 1972 to 2024. In the boys pole vault history, there are six athletes tied with a distance of 14-06. In the boys high jump history, there are seven athlets tied with a distance of 6-08.

