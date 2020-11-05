Description:
We used a set of census data (in four separate .xlsx files) available from the US Census with demographic data about the US population on a Congressional District level.
We cleaned up each of the files separately in their own notebooks (age_, sap_, edu_, and race_2018_cleanup). Then, we combined the data from the four resulting .csv files into one file (combined2018.csv), as shown in the combined_2018_cleanup.ipynb file.

----Clean-up Process (for each of the four files):
Read xlsx file into jupyter notebook (e.g. age_2018.xlsx) and create DataFrame
Get rid of first few rows of junk
Drop columns of data that are not needed
Rename columns from names like “Unnamed: xx” to appropriate names
Reset the index (.reset_index()) so that the state abbreviations, which was treated as the index column, ‘pop out’ into their own manipulable column
Combine State Abbreviation and District Number into new column Congressional District
Export dataframe into .csv file (e.g. age2018.csv)

----Combining the data into one dataframe/csv file:
Read each of the four .csv files (e.g. age2018.csv) into jupyter notebook combined_2018_cleanup.ipynb
To combine data into one table, start by creating a new DataFrame (combined_2018_df) with the columns all tables share ("State", "State Abbreviation", "District Number",  "Congressional District", and "Voting-Age Population") and also the cols unique to the age_2018 Dataframe from age_2018_df
Join in unique cols from sex and poverty DataFrame (sap_2018_df) into combined_2018_df
Do the same then for education and race DataFrames
Export resulting combined_2018_df as csv (combined2018.csv)

