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



create user mydba identified by 123;

grant connect to mydba;


select * from v$pwfile_users;


grant sysbackup to mydba; 

grant sysdba to mydba; 

select * from v$instance ;

help shutdown

alter system set sga_max_size=2G scope=spfile ;

--System altered.

alter system set sga_target=3G scope=spfile ;

--System altered.

alter system checkpoint ;

--System altered.

startup noumount 


startup force
--ORA-00823: Specified value of sga_target greater than sga_max_size
--ORA-01078: failure in processing system parameters
--SQL> startup nomount
--ORA-00823: Specified value of sga_target greater than sga_max_size
--ORA-01078: failure in processing system parameters
create pfile='/tmp/init.ora' from spfile ;

--File created.

--SQL> host givm


startup pfile='/tmp/init.ora'
--ORACLE instance started.
--
--Total System Global Area 5368709120 bytes
--Fixed Size		    8632016 bytes
--Variable Size		 2919237936 bytes
--Database Buffers	 2432696320 bytes
--Redo Buffers		    8142848 bytes
--Database mounted.
--Database opened.
create spfile from pfile='/tmp/init.ora' ;

--File created.

create spfile from memory;

--File created.

help startup

alter system enable RESTRICTED SESSION;
select logins from v$instance; 
alter system disable RESTRICTED SESSION;
select logins from v$instance; 




