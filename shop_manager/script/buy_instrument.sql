create or replace procedure buy_instrument(  p_username IN VARCHAR2
                                            ,p_instrument_id IN NUMBER
                                            ,p_shop_id IN NUMBER ) is
begin
  INSERT INTO purchase(username,instrument_id,shop_id)
         VALUES(p_username,p_instrument_id,p_shop_id);
end buy_instrument;
/
