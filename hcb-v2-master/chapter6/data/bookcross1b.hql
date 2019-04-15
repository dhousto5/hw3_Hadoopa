

CREATE DATABASE bookcrossing;
USE bookcrossing;
CREATE TABLE IF NOT EXISTS users 
    (user_id INT, 
    location STRING, 
    age INT) 
COMMENT 'Book Crossing users cleaned' 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY '\073' 
STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH ‘/home/hadoop/hw3_Hadoop/hw3_Hadoopa/hcb-v2-master/chapter6/data/BX-Users-Prepro’
 OVERWRITE INTO TABLE users;

