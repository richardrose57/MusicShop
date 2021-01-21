----------------------------------
-- 1. Create user, add grants   --
----------------------------------


alter session set "_ORACLE_SCRIPT"=true;
DECLARE
  l_cnt NUMBER;
BEGIN
  SELECT COUNT(*) INTO l_cnt FROM dba_users t WHERE t.username='SHOP_MANAGER';
  IF l_cnt=1 THEN 
    EXECUTE IMMEDIATE 'DROP USER shop_manager CASCADE';
  END IF;
END;


CREATE USER shop_manager 
  IDENTIFIED BY 12345678
  DEFAULT TABLESPACE USERS
  QUOTA UNLIMITED ON users;

GRANT CREATE SESSION TO shop_manager;
GRANT CREATE TABLE TO shop_manager;
GRANT CREATE VIEW TO shop_manager;
GRANT CREATE SEQUENCE TO shop_manager;
GRANT CREATE PROCEDURE TO shop_manager;
GRANT CREATE TRIGGER TO shop_manager;
