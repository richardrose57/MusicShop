CREATE TABLE customer(
       username VARCHAR2(30) NOT NULL PRIMARY KEY,
       password VARCHAR2(40) NOT NULL,
       first_name VARCHAR2(40),
       last_name VARCHAR2(40),
       date_of_entry DATE DEFAULT SYSDATE
)TABLESPACE users;
