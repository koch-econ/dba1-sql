select * from database_properties;

select name from v$datafile ;

show parameter 32k

alter system set db_32k_cache_size=5m;

CREATE smallfile TABLESPACE "DEMO"
 DATAFILE
 '/u01/app/oracle/oradata/mydb0/demo01.dbf' SIZE 50M AUTOEXTEND ON NEXT 100M
 BLOCKSIZE 32K
 LOGGING
 DEFAULT NOCOMPRESS NO INMEMORY
 ONLINE
 EXTENT MANAGEMENT LOCAL AUTOALLOCATE
 SEGMENT SPACE MANAGEMENT AUTO;
 
 
 
 alter tablespace demo read only ;
 
 alter tablespace demo read write;
 
 
 