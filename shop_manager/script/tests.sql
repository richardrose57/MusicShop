BEGIN
  ---New Customer
  create_customer('TesztUser','MyPassword','Teszt','Marcell'); 
END;
 SELECT * FROM customer;
  ---New Instrument
BEGIN
  add_instrument('Piano','Yamaha','Szép',55000, TO_DATE('1987/07/09', 'yyyy/mm/dd'));
END;
  SELECT * FROM instrument WHERE type = 'Piano';
  SELECT * FROM instrument_h WHERE type = 'Piano';

 ---Filter instruments
 
BEGIN
  FOR record IN filter_instruments(0,5000000)
  LOOP
      dbms_output.put_line(record.id);
  END LOOP;
END;

---Alter instrument
DECLARE
 v_instru_id NUMBER;
BEGIN
  v_instru_id := 1 ;
 alter_instru(v_instru_id, 1578952);
END;
 SELECT * FROM instrument WHERE id = 1;

--Buy instrument
BEGIN
 buy_instrument('TesztUser',1,1);
END;
SELECT * FROM purchase;
