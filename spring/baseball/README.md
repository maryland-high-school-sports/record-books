# Maryland High School Sports Championship Records Dataset -Dual Meet Wrestling
## Introduction
This repository contains historical championship data for Maryland high school
sports, compiled from Maryland Public Secondary Schools Athletic Association
(MPSSAA) records.
## Contents
The dataset `championships.csv` contains the following columns:
Year: This column refers to the specific year in which a championship or semifinalist appearance took place for the team.
Class: Indicates the league classification level or division in which the team competed (e.g., AA, 1A, 2A).
Season: Specifies the time of year when the event occurred (e.g., Spring, Fall, Winter).
Gender: Indicates whether the participants were male, female, or if another classification applies. In this context, it is either "Male" or "Female."
Status: Describes the outcome or stage of the event for the team, such as "Champion," "Finalist," or "Semifinalist."
Team: Refers to the team involved in the event or championship appearance.
Coach: Lists the name of the coach for the team during the event.
Team Score: Represents the score achieved by the team during the event.
Opponent: Refers to the opposing team that competed against the main team in the event.
Opponent Score: Represents the score achieved by the opposing team during the event.
The dataset `Indivduals.csv` contains the following columns:
Team: Name of the team or school associated with the record.
Player Name: Name of the individual who set or holds the record; if not applicable (for team records), marked as N/A.
Year: The year or years when the record was set.
Season: The sports season (e.g., Spring).
Sport: Indicates the sport, in this case, Baseball.
Record Broken: The specific achievement or record that was set or broken (e.g., Runs Scored, Hits, Doubles).
Qualifier: Provides additional context or specifics about the record, such as "Season," "Game," "Inning," "Career," or combinations like "Game, Two Teams."
Record Value: The numerical value or measure of the record.
Record Type: Identifies whether the record is a "Team" or "Individual" achievement.
## Methodology
### Data Collection
The data is from the MPSAA Record Book copy on the MPSAA site
### Data Organization
The columns are listed by Team accomplishment, followed by the result for championships. The Indivdual columns has an identifier for Individual or Team record in order to justify leaving a player name empty. All individual records start with a team name because every record has a team name.
## Caveats
The classes switched from AA,A,B,C to 4A-1A in 1989
### Known Data Limitations
### Missing Data
The records data does not have class specification due to the fact that there is no class identifier on the sheet. Semi-Finalists are not present due to issues with Class Idenficiation.
---
*Last updated: November 2024*
