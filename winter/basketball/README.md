# Maryland High School Sports Championship Records Dataset - Basketball

## Introduction

This repository contains historical championship and record data for Maryland high school sports, compiled from Maryland Public Secondary Schools Athletic Association (MPSSAA) records. Included in this folder are data for basketball, both team and individual, from 1927–2023.

### Contents

The dataset `championships.csv` contains the following columns:

-   **Team**: The name of the school.

-   **Year**: The time window in which a team recorded a data point.

-   **Final Standing**: The end-of-season status of a team — which game they won (e.g., champion, finalist, or semifinalist).

-   **Gender**: Either boys or girls.

-   **Final Score**: The final score of the given game that the team played in. If the game ended after an abnormal time, it will be listed in parentheses (e.g., OT for overtime).

-   **Coach**: The Head Coach(es) of the given school during their data point. Only teams who won a championship have their champion coach listed. Others will be listed as NA.

-   **Class**: The division that a school was in during the year that their data was recorded. The MPSSAA has gone through multiple periods where they shuffled class names (e.g., AA turns into 1A) or shifted teams between classes. There were also times in earlier years when tournaments were segregated.

The dataset `individuals.csv` contains the following columns:

-   **Record Level**: The classification of the duration that an award occurred (e.g., in the state tournament or in a season).

-   **Category**: Either team or individual.

-   **Title**: The statistic that a player or team set their record/award in (e.g., most points in a game).

-   **Category**: The type of record/award that a player or team set/achieved.

-   **Gender**: Either boys or girls.

-   **Number/Record**: The value, score, or count of the record/award.

-   **Name**: The name of the record-holding player.

-   **School**: The school of the record-holding player.

-   **Year**: The year during which a player set the record.

-   **Game**: The game in which the record was achieved (e.g., semifinal).

-   **Game 1 Number**: If a record was set across two games, the value, score, or total achieved in the first game.

-   **Game 1 Opponent**: If a record was set across two games, the opponent in the first game.

-   **Game 2 Number**: If a record was set across two games, the value, score, or total achieved in the second game.

-   **Game 2 Opponent**: If a record was set across two games, the opponent in the second game.

Other parts of this dataset include:

-   32-Plus Point Scorers (Girls)

-   34-Plus Point Scorers (Boys)

-   Individual Tournament Records

-   Team Tournament Records

-   Facts (additional info, in text)

-   Mildred Haney Murray Sportsmanship Award (Girls)

-   Jack Willard Sportsmanship Award (Boys)

------------------------------------------------------------------------

## Methodology

### Data Collection/Organization

The MPSSAA spring record book keeps all team/individual records and history for winter sports. The original PDF file can be found [here](https://content.mpssaa.org/view/882333632/).

I used the ChatGPT-4 model to convert this data from the PDF to a digital spreadsheet format. After selecting only the basketball pages from the spring record book, I processed them into a digital spreadsheet with pre-defined column names.

For team-based data (`championships.csv`), there were two lists in the record book:

1.  A list of champions by year.

2.  A list of final standings (semifinalist, finalist, champion).

These were merged in R Studio to create the final dataset, eliminating duplicates where possible.

### Caveats

**`championships.csv`:**

-   Data for final scores, coaches, or classes is often missing for teams that were not champions (e.g., finalists/semifinalists).

-   School names sometimes vary between the two source lists (e.g., "Winston Churchill" vs. "Churchill"), which led to duplicate entries.

**`individuals.csv`:**

-   This sheet is more difficult to organize due to the diversity of records and the additional "Facts" section in the original MPSSAA file.
