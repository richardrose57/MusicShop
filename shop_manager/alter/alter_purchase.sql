alter table purchase
  add constraint username_fk FOREIGN key (username) REFERENCES customer(username);
alter table purchase
  add constraint instrument_id_fk FOREIGN key (instrument_id) REFERENCES instrument(id);
  
  
  
  
  
  
  
  
  
  
  INSERT INTO instrument (id, type, brand, brand_type, cost, date_of_manufacture, date_of_entry)
                   VALUES(1,'Guitar','Ibanez', 'RG230', 500000, sysdate, sysdate );
                   
  INSERT INTO customer (username, password, first_name, last_name, date_of_entry)
                   VALUES('okoskaaa','hihi123','Okos', 'T�ni', sysdate );
                   
  INSERT INTO purchase (id, username, instrument_id, date_of_entry)
                   VALUES(1,'okoskaaa',1, sysdate );
                   
  DELETE instrument WHERE id = 1;
         
                                                                       
                                                       
