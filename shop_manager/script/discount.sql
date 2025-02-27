CREATE OR REPLACE PROCEDURE alter_instru( iv_instru_id  instrument.id%TYPE   
                                         ,iv_new_cost   instrument.cost%TYPE  DEFAULT NULL
                                         ,iv_new_active VARCHAR2 DEFAULT NULL ) IS
   v_instrument instrument%ROWTYPE;
BEGIN
   SELECT * INTO v_instrument 
   FROM instrument
   WHERE id = iv_instru_id ;  

 UPDATE instrument 
 SET cost =   CASE 
                WHEN iv_new_cost IS NOT NULL
                THEN iv_new_cost
                ELSE v_instrument.cost
              END,
     active = CASE
                WHEN iv_new_active IS NOT NULL
                THEN iv_new_active
                ELSE v_instrument.active
              END
                        
 WHERE id = iv_instru_id;
END alter_instru;
