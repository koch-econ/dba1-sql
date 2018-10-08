@ElectronicsDefine

@ElectronicsInsert


@ElectronicsSelect



select * from user_users;

set role dba;
set role none;

select * from all_users;
select * from dba_users;


select * from v$log; 

select * from v$logfile; 

select * from all_tables; 
select * from user_tables; 

set role none ;
select count(*) from user_tables;
select count(*) from all_tables;
select count(*) from dba_tables;



select current_scn, NAME , LOG_MODE from v$dataBASE ;

SELECT * FROM V$PWFILE_USERS; 


SELECT * FROM V$BGPROCESS
WHERE PADDR<>'00' ;

DESC V$BH

SELECT DISTINCT dirty FROM V$BH;

SHOW PARAMETER BUF


SELECT * FROM V$VERSION ;


SELECT * FROM V$SQL
WHERE REGEXP_LIKE(SQL_TEXT, 'TEAMID','i');
; 

