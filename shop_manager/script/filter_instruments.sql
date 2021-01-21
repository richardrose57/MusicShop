CREATE OR REPLACE PROCEDURE filter_instruments(iv_min_cost       IN VARCHAR2 DEFAULT NULL
                                              ,iv_max_cost       IN VARCHAR2 DEFAULT NULL
                                              ,iv_instru_type    IN VARCHAR2 DEFAULT NULL ) IS
q SYS_REFCURSOR;
BEGIN
  OPEN q for SELECT  type
                    ,brand
                    ,brand_type
                    ,cost
                    ,date_of_manufacture
                    ,date_of_entry 
             FROM instrument
             WHERE active = 'X'
             AND   type LIKE
                        CASE 
                          WHEN iv_instru_type IS NULL
                          THEN '%'
                          ELSE iv_instru_type
                        END
             AND   cost <= CASE 
                          WHEN iv_min_cost IS NULL
                          THEN '%'
                          ELSE iv_min_cost
                        END
             AND   cost >= CASE 
                          WHEN iv_max_cost IS NULL
                          THEN '%'
                          ELSE iv_max_cost
                        END;
             
  DBMS_SQL.return_result(q);  
END filter_instruments;
