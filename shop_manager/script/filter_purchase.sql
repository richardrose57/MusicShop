CREATE OR REPLACE PROCEDURE filter_purchases(  iv_username       IN VARCHAR2 DEFAULT NULL
                                              ,iv_low_date       IN DATE 
                                              ,iv_high_date      IN DATE ) IS
q SYS_REFCURSOR;
BEGIN
  OPEN q for SELECT  c.username
                    ,i.brand
                    ,i.brand_type
                    ,s.address
                    ,p.date_of_entry
              FROM purchase p
              INNER JOIN customer c   ON c.username = p.username
              INNER JOIN instrument i ON i.id       = p.instrument_id
              INNER JOIN shop s       ON s.id       = p.shop_id
              WHERE p.username = CASE 
                                      WHEN iv_username IS NOT NULL
                                      THEN iv_username
                                      ELSE '%'
                                 END;
  DBMS_SQL.return_result(q);  
END filter_purchases;
