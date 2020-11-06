DROP TABLE IF EXISTS unemployment;
DROP TABLE IF EXISTS house
DROP TABLE IF EXISTS senate;
DROP TABLE IF EXISTS pres;
DROP TABLE IF EXISTS demographics;

CREATE TABLE unemployment (
    State VARCHAR(30) PRIMARY KEY,
    [2016 rate] FLOAT,
    [2016 Rank] INT,
    [2018 rate] FLOAT,
    [2018 Rank] INT
);

CREATE TABLE house (
    year INT,
    congressional_district VARCHAR(5),
    state VARCHAR(30),
    state_abbreviation VARCHAR(2),
    district_number INT,
    special_election BOOLEAN,
    candidate VARCHAR(50),
    party VARCHAR(50),
    candidate_votes INT,
    total_votes INT,
    candidate_percent FLOAT,
    FOREIGN KEY (state) REFERENCES unemployment(state),
    PRIMARY KEY (year, congressional_district, candidate, party)
);

CREATE TABLE senate (
    year INT,
    state VARCHAR(30),
    state_abbreviation VARCHAR(2),
    special_election BOOLEAN,
    candidate VARCHAR(50),
    party VARCHAR(50),
    candidate_votes INT,
    total_votes INT,
    candidate_percent FLOAT,
    FOREIGN KEY (state) REFERENCES unemployment(state),
    PRIMARY KEY (year, state, candidate, party)
);

CREATE TABLE president (
    year INT,
    state VARCHAR(30),
    state_abbreviation VARCHAR(2),
    county VARCHAR(30),
    office VARCHAR(30),
    candidate VARCHAR(50),
    party VARCHAR(50),
    candidate_votes INT,
    total_votes INT,
    candidate_percent FLOAT,
    FOREIGN KEY (state) REFERENCES unemployment(state),
    PRIMARY KEY (year, state, county, candidate, party)
);

CREATE TABLE demographics (
    State VARCHAR(30),
    [State Abbreviation] VARCHAR(2),
    [District Number] INT,
    [Congressional District] VARCHAR(5) PRIMARY KEY,
    [Voting-Age Population] INT,
    [18-29 Years Old] INT,
    [30-44 Years Old] INT,
    [30-44 Years Old] INT,
    [45-64 Years Old] INT,
    [65+ Years Old] INT,
    Men INT,
    Women INT
    [Above Poverty Level] INT,
    [Below Poverty Level] INT,
    [Less than 9th Grade] INT,
    [9th to 12 Grade, No Diploma] INT,
    [High School Graduate] INT,
    [Some College, No Degree] INT,
    [Associate's Degree] INT,
    [Bachelor's Degree] INT,
    [Graduate Degree] INT,
    [High School or More] INT,
    [Bachelor's Degree or More] INT,
    White INT,
    Black INT,
    Asian INT,
    [American Indian and Alaska Native] INT,
    [Native Hawaiian and Other Pacific Islander] INT,
    [Some Other Race] INT,
    [Two or More Races] INT,
    Hispanic INT,
    [White Non-Hispanic] INT,
    FOREIGN KEY (State) REFERENCES unemployment(State),
);
