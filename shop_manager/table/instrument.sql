drop table purchase;
DROP TABLE instrument;
CREATE TABLE instrument(
       ID NUMBER NOT NULL PRIMARY KEY
      ,type VARCHAR2(40) NOT NULL
      ,brand VARCHAR2(40) NOT NULL
      ,brand_type VARCHAR2(40)
      ,cost NUMBER
      ,date_of_manufacture DATE
      ,date_of_entry DATE
      ,active BOOLEAN DEFAULT TRUE
)TABLESPACE users;

