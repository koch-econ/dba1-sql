
alter user dbsnmp identified by oracle account unlock ;



alter database enable block change tracking ;




select * from dba_profiles;


create sequence student1.memb2_seq start with 510 ;

insert into student1.memb2( memberid, lastname) 
values( student1.memb2_seq.nextval, 'Pupkin') ;

insert into student1.memb2( memberid, lastname) 
values( student1.memb2_seq.nextval, 'Mupkin') ;

select student1.memb2_seq.currval from dual ;




create user user_pw identified by 123 ;
grant connect to user_pw ;

connect user_pw/123@db0
select * from user_users ;

show parameter prefix
show parameter auth
create user ops$user1 identified externally ;

grant create session to  ops$user1 ;

create user glob_vpup identified globally as 'cn=Vasiliy Pupkin,ou=academy,o=lanit' ;


alter user user_pw identified by abc123 ;


select * from dba_source
where regexp_like (name , 'verify','i') ;


grant connect ,resource to user2 identified by 123; 

connect user2/123@db0
select * from user_users ;
SELECT * FROM session_roles;

alter user user_pw quota 30m on users;
SELECT * FROM DBA_TS_QUOTAS ;

SELECT * FROM session_privs;

SELECT * FROM session_roles;

grant select on hr.employees to student1 WITH GRANT OPTION ;
grant resource,create view, unlimited tablespace to student1 with admin option ;

connect student1/student1@db0
grant select on hr.employees to student2;

SELECT grantee, owner, table_name, grantor, privilege, grantable
FROM dba_tab_privs WHERE grantee = 'STUDENT1';





create role hr_clerk ;
create role hr_manager ;

grant hr_clerk to hr_manager ;


grant hr_clerk to student2 ;

grant hr_manager to student1 ;


connect student2/student2@db0
select * from session_roles; 

revoke hr_clerk from student2 ;
connect student2/student2@db0
select * from session_roles; 

grant hr_manager , connect , resource to  mgr_user identified by 123 ;

grant hr_clerk , connect , resource to  clerk_user identified by 123 ; 

grant update , select on STUDENT1.members to hr_clerk ;

connect mgr_user/123@db0
update STUDENT1.members set salary = salary * 2;
rollback; 

grant insert , delete on STUDENT1.members to hr_manager;
connect clerk_user/123@db0
delete from  STUDENT1.members ;
rollback; 

connect mgr_user/123@db0
delete from  STUDENT1.members ;
rollback; 


connect mgr_user/123@db0
set role hr_manager;
delete from  STUDENT1.members ;
rollback; 

connect mgr_user/123@db0
set role all except resource ;
select * from session_roles; 

connect mgr_user/123@db0
set role none;
select * from session_roles; 

create role vacation_dba identified by 123; 
grant vacation_dba to mgr_user ;
create role checked_by_proc identified ing check_proc ;

-- standard audit 

show parameter audit_trail

alter system set audit_trail=DB,EXtended scope=spfile; 
select * from dba_audit_trail ; -- SYS.AUD$ 

alter system set audit_trail=XML,extended scope=spfile  ;
select * from V$xml_audit_trail ;

alter system set audit_trail=OS scope=spfile  ;


AUDIT create session;
audit select any table ;
SELECT * FROM DBA_PRIV_AUDIT_OPTS;


connect mgr_user/123@db0
select * from hr.countries; 


SELECT * FROM  UNIFIED_AUDIT_TRAIL;


desc DBMS_AUDIT_MGMT

info DBMS_AUDIT_MGMT


SELECT distinct policy_name FROM  AUDIT_UNIFIED_POLICIES; 


SELECT * FROM audit_unified_enabled_policies;

noaudit policy ora_secureconfig; 

SELECT * FROM audit_unified_enabled_policies;
audit policy ora_secureconfig; 

SELECT * FROM audit_unified_enabled_policies;