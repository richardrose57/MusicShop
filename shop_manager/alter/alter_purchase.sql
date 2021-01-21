alter table purchase
  add constraint username_fk FOREIGN key (username) REFERENCES customer(username);
alter table purchase
  add constraint instrument_fk FOREIGN key (instrument_id) REFERENCES instrument(id);
alter table instrument_h
  add constraint instru_fk FOREIGN key (instrument_id) REFERENCES instrument(id);  
  
