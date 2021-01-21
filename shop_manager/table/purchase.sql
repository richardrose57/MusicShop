CREATE TABLE purchase(
  ID NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1) PRIMARY KEY,
  username VARCHAR2(30) NOT NULL,
  instrument_id NUMBER NOT NULL,
  shop_id NUMBER NOT NULL,
  date_of_entry DATE DEFAULT SYSDATE
)TABLESPACE users;
