---
editor_options: 
  markdown: 
    wrap: 72
---

# Maryland High School Sports Championship Records Dataset - SOFTBALL

## Introduction

This repository contains historical championship and record data for
Maryland high school sports, compiled from Maryland Public Secondary
Schools Athletic Association (MPSSAA) records. Included in this folder
are data for softball, both team and individual from 1976-2023.

**Contents**

The dataset `championships.csv` contains the following columns:

[Class:]{.underline} The Division that a school was in during the year
that their data was recorded. The MPSSAA has gone through multiple
periods of time where they have shuffled the names of classes (ie. AA
turns into 1A) or have shifted teams between classes.

[Year:]{.underline} The time window in which a team recorded a data
point.

[Team:]{.underline} The name of the school.

[Final_Score:]{.underline} The final score of the given game that the
team played in. If the game ended after an abnormal number of innings,
it will be listed in parentheses (the normal game is 7 innings). Common
cases are extra innings or mercy rules. Only teams who won a
championship have their final score listed. Others will be listed NA.

[Coach:]{.underline} The Head Coach(es) of the given school during their
data point. Only teams who won a championship have their champion coach
listed. Others will be listed NA.

[Final Standing:]{.underline} The end-of-season status of a team - which
game they won. Either champion, finalist, or semifinalist.

[Gender]{.underline}

[Sport]{.underline}

The dataset `individuals.csv` contains the following columns:

[Category:]{.underline} The type of record/award that a player or team
set/achieved.

[Number/Record:]{.underline} The value, score or count of the
record/award.

[Name:]{.underline} The name of the record holding player.

[School:]{.underline} The school of the record holding player.

[Year(s):]{.underline} The year or years during which a player set the
record.

[Gender]{.underline}

There are two parts to this set: State Tournament Records and
Career/Season Records. Career/Season records includes pitching and
offense.

## Methodology

### Data Collection/Organization

The MPSSAA spring record book keeps all team/individual records and
history for spring sports. The original pdf file on their website can be
found [here](https://content.mpssaa.org/view/882333632/). I used the
ChatGPT 4o AI model to convert this data from the pdf to a digital
spreadsheet format. I then took the spring record book file and selected
only the softball pages, then downoaded attached those pages as pdf
files to give to ChatGPT. I then told the machine to create a
spreadsheet file with the column names that I desire, and gave an
example of how I wanted it to look. The machine was then able to go
section-by-section and create a spreadsheet for me.

For team–based data being loaded into `championships.csv`, there were
two separate lists of records that were in the record book, one
including a list of champions by year, and another including a list of
final standings (semifinalist, finalist, champion). I had to merge these
two sets together through R studio. The R software helped pick out
matches in the two sets and merge them while eliminating duplicates.

### Caveats 

`championships.csv`:

As mentioned in the "Contents" section, there is no data for the final
score, coach, or class for teams who were not champions in a given year
(ie. finalists/semifinalists). There is possibility of an assumption to
be made for a team if we can see from their champion record that they
were in a certain class, but it does not apply to all of the data.

When merging the two data sets (as mentioned in "Data Collection"),
there were some problems in matching observations, specifically with the
names of schools. Some schools are listed with different names in the
two sets, for example "Winston Churchill" in one set was "Churchill" in
another set. The R software was not able to pick up this match properly.
There are some duplicate entries in the model that list a team's final
standing twice under different names.

`individuals.csv`:

Since there are many different categories within the individual data, it
is more difficult to perform analysis and compare the data; for example,
one record may include the highest number of innings in a game, whereas
another record may include the best pitching ERA.
