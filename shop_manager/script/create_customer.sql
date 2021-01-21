CREATE OR REPLACE PROCEDURE create_customer(iv_username       IN VARCHAR2
                                           ,iv_password       IN VARCHAR2
                                           ,iv_first_name     IN VARCHAR2
                                           ,iv_last_name      IN VARCHAR2 ) IS
 v_hash_pw VARCHAR(40);
BEGIN
     SELECT STANDARD_HASH(2000) INTO v_hash_pw FROM DUAL;

     INSERT INTO customer(username, password, first_name, last_name) 
                 VALUES(iv_username, v_hash_pw, iv_first_name, iv_last_name)
END create_customer;
