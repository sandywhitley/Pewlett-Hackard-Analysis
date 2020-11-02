# Pewlett-Hackard-Analysis
#### VDAB Module 7 SQL
Sandra Whitley | Nov 2020
**************

## Overview
The purpose to the Pewlett Hackard (PH) Analysis exercise was to create a SQL db and extract data to determine retirement eligible and mentorship eligible PH employees as defined by "Bobby," the hypothetical PH HR analyst in the exercise. Six csv files were provided to create the Employee db referenced in the SQL_Employee_dB_ERD. 

### SQL_Employee_dB_ERD
![SQL_Employee_dB_ERD](/SQL_Employee_DB_ERD.png)

## Results
Bobby's analysis involved four steps/queries shown in this list.

#### Employee Database SQL Queries
![Employee Database SQL Queries](/Queries/Employee_Datbase_Challenge.sql)

Step 1: The first query gathered a list of all PH employees born between 1952 - 1955. The results included both current and former PH employees. 

#### Step 1: Comprehensive Retirement Eligibility List
![Retirement Eligibility List](/Data/retirement_titles.csv)

Step 2: The second query referenced the Retirement Eligibility List and used the DISTINCT ON clause on emp_no to remove duplicate PH employee records based on employee title changes. The DISTINCT ON clause returns the first row of a duplicate as determined by the ORDER BY command. 

#### Step 2: Unique Titles List
![Unique Titles List](/Data/unique_titles.csv)

Step 3: The third query counted the United Titles list by Title with a total of 90,398 potential retirees.

#### Step 3: Retirees by Title Count List
![Retirees by Title Count ](/Data/retiring_titles.csv)

Step 4: The fourth query gathered a list of current PH employees born in 1965 as candidates for mentorship to the retirees. The results gleaned 1549 potential candidates.

#### Step 4: Mentorship Eligibility List
![MentorshipEligibility List](/Data/mentorship_eligibility.csv)

## Summary
In summary, Bobby's analytic method resulted in 90,398 potential retirees and 1,549 mentorship candidates. However, Bobby's efforts to extract the potential retirees was not performed correctly. His first query should have only included current employees, not former and current employees. Former employee information was irrevelant to this effort. Also the query sort should have been on the from_date field and in descending order so the PH employees' most current position would be first in the list. The second query used the DISTINCT ON clause to select the first row if there are multiple records based on the specified field.

My recommendation is for Bobby to rework Query 1, 2, and 3 so the correct PH employees are offered retirement packages.
