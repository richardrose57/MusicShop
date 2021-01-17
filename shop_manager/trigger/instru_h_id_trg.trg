CREATE OR REPLACE TRIGGER instrument_h_id_trg 
BEFORE INSERT ON instrument_h
FOR EACH ROW

BEGIN
  SELECT seq_instru_id.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/
