
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
