SELECT
    *
FROM
    database_properties;

SELECT file#,
    name
FROM
    v$datafile;

SHOW parameter 32k

alter system set db_32k_cache_size=5m;

CREATE smallfile tablespace "DEMO" datafile '/u01/app/oracle/oradata/mydb0/demo01.dbf' size 50 M autoextend ON next 100 M

blocksize 32 K logging default nocompress no inmemory online extent management local autoallocate segment space management
auto;


alter database default tablespace users; 

drop tablespace demo including contents and datafiles;

grant sysdba to mysys identified by 123 ;


 CREATE TABLESPACE "DEMO" DATAFILE 
  '/u01/app/oracle/oradata/mydb0/demo01.dbf' SIZE 52428800
  LOGGING BLOCKSIZE 32768
  AUTOALLOCATE DEFAULT 
  SEGMENT SPACE MANAGEMENT AUTO;

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
            student1.memb2;
 
 ALTER TABLESPACE demo OFFLINE;
 
select * FROM
            student1.memb2;
            
select * from V$datafile ;       


ALTER TABLESPACE demo offline normal ;
ALTER TABLESPACE demo OnLINe;

ALTER TABLESPACE demo offline immediate;
recover tablespace demo ;
ALTER TABLESPACE demo OnLINe;


ALTER TABLESPACE demo offline temporary;

ALTER TABLESPACE demo OnLINe;







SELECT file#,
    name
FROM
    v$datafile;


alter database datafile 2 offline;

alter database datafile 2 online;




 
 