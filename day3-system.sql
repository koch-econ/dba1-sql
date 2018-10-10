SELECT
    *
FROM
    database_properties;

SELECT
    name
FROM
    v$datafile;

SHOW parameter 32k

alter system set db_32k_cache_size=5m;

CREATE smallfile tablespace "DEMO" datafile '/u01/app/oracle/oradata/mydb0/demo01.dbf' size 50 M autoextend ON next 100 M

blocksize 32 K logging default nocompress no inmemory online extent management local autoallocate segment space management
auto;

ALTER TABLESPACE demo READ ONLY;

ALTER TABLESPACE demo READ WRITE;

ALTER TABLESPACE demo OFFLINE;

ALTER TABLESPACE demo ONLINE;

CREATE TABLE student1.memb2
TABLESPACE demo
    AS
        SELECT
            *
        FROM
            student1.members;

select * FROM
            student1.members;
 
 ALTER TABLESPACE demo OFFLINE;
 
select * FROM
            student1.memb2;
            
select * from V$datafile ;       

sho user


 
 