CREATE TABLE instrument(
       ID NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1) PRIMARY KEY
      ,type VARCHAR2(40) NOT NULL
      ,brand VARCHAR2(40) NOT NULL
      ,brand_type VARCHAR2(40)
      ,cost NUMBER NOT NULL
      ,date_of_manufacture DATE
      ,date_of_entry DATE DEFAULT SYSDATE
      ,active VARCHAR2(1) DEFAULT '1'
)TABLESPACE users;

