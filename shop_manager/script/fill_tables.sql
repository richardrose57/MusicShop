 INSERT INTO instrument (type, brand, brand_type, cost, date_of_manufacture, date_of_entry)
                   VALUES('Guitar','Ibanez', 'RG230', 500000, sysdate, sysdate);
 INSERT INTO instrument (type, brand, brand_type, cost, date_of_manufacture, date_of_entry)
                   VALUES('Guitar','Fender', 'OF578', 5000000, sysdate, sysdate );
                   
  INSERT INTO customer (username, password, first_name, last_name, date_of_entry)
                   VALUES('okoskaaa','hihi123','Okos', 'T�ni', sysdate );
   INSERT INTO customer (username, password, first_name, last_name, date_of_entry)
                   VALUES('butuskaa','haha123','Buta', '�ron', sysdate );                
                   
  INSERT INTO shop (address) VALUES ('M�ra Ferenc u. 72');
  INSERT INTO shop (address) VALUES ('P�ter M�rton u. 72');
                   
  INSERT INTO purchase (username, instrument_id,shop_id, date_of_entry)
                   VALUES('okoskaaa',1,1, sysdate );
  INSERT INTO purchase (username, instrument_id, date_of_entry)
                   VALUES('butuskaaa',1, sysdate );
