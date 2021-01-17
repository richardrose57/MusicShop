CREATE OR REPLACE TRIGGER instrument_h_trg
  AFTER INSERT OR UPDATE instrument
  FOR EACH ROW
DECLARE
  v_mod_user instrument_h.mod_user%TYPE;
  v_mod_time instrument_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');

    INSERT INTO instrument_h  
      (id
      ,instrument_id
      ,new_cost                       
      ,new_active                     
      ,mod_user                       
      ,date_of_entry                  
  )                            
    VALUES
      (:old.vacc_type_id
      ,:new.id
      ,:new.cost
      ,:new.active
      ,:v_mod_user);

END;
