CREATE TABLE customer(
       username NOT NULL VARCHAR2(30) PRIMARY KEY,
       password VARCHAR2 NOT NULL,
       first_name VARCHAR2(40),
       last_name VARCHAR2(40),
       date_of_entry DATE
)TABLESPACE users;
