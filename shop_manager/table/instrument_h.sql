CREATE TABLE instrument_h(
        id NUMBER NOT NULL PRIMARY KEY,
        instrument_id NUMBER,
        new_cost NUMBER,
        new_active VARCHAR2(1),
        mod_user varchar2(30),
        date_of_entry DATE DEFAULT SYSDATE
)TABLESPACE users;
