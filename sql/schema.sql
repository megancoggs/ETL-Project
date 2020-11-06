DROP TABLE IF EXISTS unemployment;
DROP TABLE IF EXISTS house
DROP TABLE IF EXISTS senate;
DROP TABLE IF EXISTS pres;
DROP TABLE IF EXISTS demographics

CREATE TABLE unemployment (
    State VARCHAR(30) PRIMARY KEY,
    [2016 rate] FLOAT,
    [2016 Rank] INT,
    [2018 rate] FLOAT,
    [2018 Rank] INT
);

CREATE TABLE house (
    Year INT,
    [Congressional District] VARCHAR(5),
    State VARCHAR(30),
    [State Abbreviation] VARCHAR(2),
    District Number INT,
    [Special Election] BOOLEAN,
    Candidate VARCHAR(50),
    Party VARCHAR(50),
    [Candidate Votes] INT,
    [Total Votes] INT,
    [Candidate Percent] FLOAT
    FOREIGN KEY (State) REFERENCES unemployment(State),
    PRIMARY KEY (Year, [Congressional District], Candidate, Party)
);

CREATE TABLE senate (
    Year INT,
    State VARCHAR(30),
    [State Abbreviation] VARCHAR(2),
    [Special Election] BOOLEAN,
    Candidate VARCHAR(50),
    Party VARCHAR(50);
    [Candidate Votes] INT,
    [Total Votes] INT,
    [Candidate Percent] FLOAT,
    FOREIGN KEY (State) REFERENCES unemployment(State),
    PRIMARY KEY (Year, State, Candidate, Party)
);

CREATE TABLE pres(
    Year INT,
    State VARCHAR(30),
    [State Abbreviation] VARCHAR(2),
    County VARCHAR(30),
    Office VARCHAR(30),
    Candidate VARCHAR(50),
    Party VARCHAR(50),
    [Candidate Votes] INT,
    [Total Votes] INT,
    [Candidate Percent] FLOAT,
    FOREIGN KEY (State) REFERENCES unemployment(State),
    PRIMARY KEY (Year, State, County, Candidate, Party)
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
