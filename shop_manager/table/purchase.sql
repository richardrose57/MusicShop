DROP TABLE purchase;
CREATE TABLE purchase(
  ID NUMBER NOT NULL PRIMARY KEY,
  username VARCHAR2(30),
  instrument_id NUMBER,
  shop_id NUMBER,
  date_of_purchase DATE
)TABLESPACE users;
