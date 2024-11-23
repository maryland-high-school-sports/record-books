# Maryland High School Sports Championship Records Dataset - Softball

## Introduction

This repository contains historical championship and record data for Maryland high school sports, compiled from Maryland Public Secondary Schools Athletic Association (MPSSAA) records. Included in this folder are data for softball, both team and individual, from 1976–2023.

------------------------------------------------------------------------

## Contents

The dataset `championships.csv` contains the following columns:

-   **Class**: The division that a school was in during the year that their data was recorded. The MPSSAA has gone through multiple periods where they shuffled class names (e.g., AA turns into 1A) or shifted teams between classes.

-   **Year**: The time window in which a team recorded a data point.

-   **Team**: The name of the school.

-   **Final_Score**: The final score of the given game that the team played in. If the game ended after an abnormal number of innings, it will be listed in parentheses (e.g., extra innings or mercy rules; normal games are 7 innings). Only championship-winning teams have their final scores listed; others are marked as NA.

-   **Coach**: The Head Coach(es) of the given school during their data point. Only championship-winning teams have their coaches listed; others are marked as NA.

-   **Final Standing**: The end-of-season status of a team — which game they won (e.g., champion, finalist, or semifinalist).

-   **Gender**: Gender of the team.

-   **Sport**: The sport (softball).

The dataset `individuals.csv` contains the following columns:

-   **Record Level**: The classification of the duration that an award occurred (e.g., state tournament, career, or season).

-   **Category**: The type of record/award that a player or team set/achieved (e.g., offense).

-   **Title**: The statistic that a player or team set their record/award in (e.g., RBIs).

-   **Number/Record**: The value, score, or count of the record/award.

-   **Name**: The name of the record-holding player.

-   **School**: The school of the record-holding player.

-   **Year(s)**: The year or years during which a player set the record.

-   **Gender**: Gender of the player or team.

This dataset is divided into two parts:

1.  **State Tournament Records**

2.  **Career/Season Records** (including pitching and offense).

------------------------------------------------------------------------

## Methodology

### Data Collection/Organization

The MPSSAA spring record book keeps all team/individual records and history for spring sports. The original PDF file can be found [here](https://content.mpssaa.org/view/882333632/).

I used the ChatGPT-4 model to convert this data from the PDF to a digital spreadsheet format. After selecting only the softball pages from the spring record book, I processed them into a digital spreadsheet with pre-defined column names.

For team-based data (`championships.csv`), there were two lists in the record book:

1.  A list of champions by year.

2.  A list of final standings (semifinalist, finalist, champion).

These were merged in R Studio to create the final dataset, eliminating duplicates where possible.

------------------------------------------------------------------------

## Caveats

### `championships.csv`

-   Data for the final score, coach, or class is often missing for teams that were not champions (e.g., finalists/semifinalists).

-   School names sometimes vary between the two source lists (e.g., "Winston Churchill" vs. "Churchill"), leading to duplicate entries.

### `individuals.csv`

-   The diversity of categories within the individual data makes analysis challenging. For instance, one record may include the highest number of innings in a game, while another may include the best pitching ERA, making direct comparisons difficult.
