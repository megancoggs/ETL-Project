DROP TABLE IF EXISTS unemployment;
DROP TABLE IF EXISTS house;
DROP TABLE IF EXISTS senate;
DROP TABLE IF EXISTS president;
DROP TABLE IF EXISTS demographics;

CREATE TABLE unemployment (
    state VARCHAR(30) PRIMARY KEY,
    rate_2016 FLOAT,
    rank_2016 INT,
    rate_2018 FLOAT,
    rank_2018 INT
);

CREATE TABLE house (
    year INT,
    congressional_district VARCHAR(30),
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
    county VARCHAR (30),
    office VARCHAR (30),
    candidate VARCHAR(50),
    party VARCHAR(50),
    candidate_votes INT,
    total_votes INT,
    candidate_percent FLOAT,
    FOREIGN KEY (state) REFERENCES unemployment(state),
    PRIMARY KEY (state, county, candidate, party)
);

CREATE TABLE demographics (
    state VARCHAR(30),
    state_abbreviation VARCHAR(2),
    district_number INT,
    congressional_district VARCHAR(30) PRIMARY KEY,
    voting_age_population INT,
    age_18_29_years_old INT,
    age_30_44_years_old INT,
    age_45_64_years_old INT,
    age_65_and_older INT,
    men INT,
    women INT,
    above_poverty_level INT,
    below_poverty_level INT,
    less_than_9th_grade INT,
    high_school_no_diploma INT,
    high_school_graduate INT,
    some_college_no_degree INT,
    associates_degree INT,
    bachelors_degree INT,
    graduate_degree INT,
    high_school_or_more INT,
    bachelors_degree_or_more INT,
    white INT,
    black INT,
    asian INT,
    american_indian_and_alaska_native INT,
    native_hawaiian_and_other_pacific_islander INT,
    some_other_race INT,
    two_or_more_races INT,
    hispanic INT,
    white_non_hispanic INT,
    FOREIGN KEY (state) REFERENCES unemployment(state)
);
