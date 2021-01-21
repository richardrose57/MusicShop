CREATE TABLE instrument_h(
        id NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1) PRIMARY KEY
        ,instrument_id NUMBER
        ,new_cost  NUMBER NOT NULL
        ,new_active VARCHAR2(1) DEFAULT '1'
        ,mod_user varchar2(30)
        ,date_of_entry DATE DEFAULT SYSDATE
)TABLESPACE users;
