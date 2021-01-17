 INSERT INTO instrument (type, brand, brand_type, cost, date_of_manufacture, date_of_entry)
                   VALUES('Guitar','Ibanez', 'RG230', 500000, sysdate, sysdate );
                   
  INSERT INTO customer (username, password, first_name, last_name, date_of_entry)
                   VALUES('okoskaaa','hihi123','Okos', 'Tóni', sysdate );
                   
  INSERT INTO shop (address) 
                   VALUES ('Móra Ferenc u. 72');
                   
  INSERT INTO purchase (username, instrument_id, date_of_entry)
                   VALUES('okoskaaa',1, sysdate );
