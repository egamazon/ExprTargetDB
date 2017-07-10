CREATE TABLE MICRORNA_EXPRSCORES  (
        mirna_name varchar(256),
        gname varchar(256),
        miranda float,
        pictar float,
        targetscan float,
        lcls float,
        tarbase float,
        exprscore float,

        index(gname),
        index(mirna_name),
        index(miranda),
        index(pictar),
        index(targetscan),
        index(lcls),
        index(tarbase),
        index(exprscore)

) ENGINE=MyISAM DEFAULT CHARSET=latin1 DATA DIRECTORY='/vdata/micrornatables/' INDEX DIRECTORY='/vdata/micrornatables/';

LOAD DATA LOCAL INFILE 'finalpredictions.microrna.summary.txt'
INTO TABLE MICRORNA_EXPRSCORES
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n';
