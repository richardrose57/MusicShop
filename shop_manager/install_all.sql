PROMPT Installing DB...
--alter session set "_ORACLE_SCRIPT"=true;
--sequences
--CREATE SEQUENCE seq_instru_h_id START WITH 1;

--tables
DROP TABLE instrument
@./table/instrument.sql
@./table/instrument_h.sql
@./table/purchase.sql
@./table/costumer.sql
@./table/shop.sql

--triggers
@./trigger/instrument_trg.trg
BEGIN
  dbms_utility.compile_schema(schema => 'SHOP_MANAGER');
END;


--foreign keys
@./alter/alter_purchase.sql


--table data
--@./script/fill_tables.sql
