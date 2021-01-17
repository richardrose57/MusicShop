CREATE TABLE instrument_h(
        id NUMBER NOT NULL PRIMARY KEY,
        instrument_id NUMBER,
        new_cost NUMBER,
        new_active BOOLEAN,
        mod_user varchar2(30),
        date_of_entry DATE DEFAULT SYSDATE
)TABLESPACE users;
