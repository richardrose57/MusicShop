create or replace procedure add_instrument(  p_type IN VARCHAR2
                                            ,p_brand IN VARCHAR2
                                            ,p_brand_type IN VARCHAR2
                                            ,p_cost IN NUMBER
                                            ,p_date_of_manufacture IN DATE
                                            ) is
begin
  INSERT INTO instrument(type,brand,brand_type,cost,date_of_manufacture)
   VALUES(p_type,p_brand,p_brand_type,p_cost,p_date_of_manufacture  );
end add_instrument;
/
