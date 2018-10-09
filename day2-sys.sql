select * from V$tempseg_usage; 

SELECT * FROM v$memory_dynamic_components;

show sga

-- start stop database 

alter system register ;

begin
    dbms_xdb_config.sethttpsport(5500);
end ;
/

execute    dbms_xdb_config.sethttpsport(5500)



