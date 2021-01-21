CREATE OR REPLACE TRIGGER instrument_h_trg
  AFTER INSERT OR UPDATE ON instrument
  FOR EACH ROW
DECLARE
  v_mod_user instrument_h.mod_user%TYPE;
BEGIN
  SELECT USER INTO v_mod_user FROM DUAL;
  
    INSERT INTO instrument_h
      (instrument_id
      ,new_cost
      ,new_active
      ,mod_user
  )
    VALUES
      (:new.id
      ,:new.cost
      ,:new.active
      ,v_mod_user);
      
END;
/
