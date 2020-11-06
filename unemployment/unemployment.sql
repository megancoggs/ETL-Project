DROP TABLE IF EXISTS unemployment;

CREATE TABLE "unemployment" (
    "state" VARCHAR   PRIMARY KEY,
    "rate_2016" INT   ,
	"rank_2016" INT ,
	"rate_2018" INT ,
	"rank_2018" INT 
    );