create database exp7;
use exp7;
create table DEPT_TABLE(
deptno int,
dname varchar(30),
loc varchar(30)
);
insert into DEPT_TABLE values (10,"ACCOUNTING","NEW YORK");
insert into DEPT_TABLE values (20,"RESEARCH","DALLAS");
insert into DEPT_TABLE values (30,"SALES","CHICAGO");
insert into DEPT_TABLE values (40,"OPERATION","BOSTON");

alter table dept_table add primary key(deptno);

create table EMP(
    EMPNO int,
     ENAME varchar(30),
     JOb varchar(30),
     MGR int,
     HIREDATE varchar(30),
     SAL int,
     COMM int,
     DEPTNO int,
     foreign key (deptno) references dept_table(deptno)
     );
 insert into EMP(EMPNO,ENAME,JOb,MGR,HIREDATE,SAL,COMM,DEPTNO) values
     (7369,"SMITH","CLERK",7902,"17-DEC-80",500,800,20);
insert into EMP(EMPNO,ENAME,JOb,MGR,HIREDATE,SAL,COMM,DEPTNO) values
     (7499,"ALLEN","SALESMAN",7689,"20-FEB-81",1600,300,30);
insert into EMP values(7521,"WARD","SALESMAN",7698,"22-FEB-81",1250,500,30);
 insert into EMP values(7566,"JONES","MANAGER",7839,"02-APR-81",2975,null,20);
 insert into EMP values(7654,"MARTIN","SALESMAN",7698,"28-SEP-81",1250,1400,30);
 insert into EMP values(7698,"BLAKE","MANAGER",7839,"01-MAY-81",2850,NULL,30);
 insert into EMP values(7782,"CLARK","MANAGER",7839,"09-JUN-81",2450,NULL,10); 
insert into EMP values(7788,"SCOTT","ANALYST",7566,"09-DEC-82",3000,NULL,20);
 insert into EMP values(7839,"KING","PRESIDENT",NULL,"17-NOV-81 ",5000,NULL,10);
 insert into EMP values(7844,"TURNER","SALESMAN",7698,"08-SEP-81",1500,0,30);
 insert into EMP values(7876,"ADAMS","CLERK",7788,"12-JAN-83",1100,NULL,20);
 insert into EMP values(7900,"JAMES","CLERK",7698,"03-DEC-81",950,NULL,30);
insert into EMP values(7902,"FORD","ANALYST",7566,"03-DEC-81",3000,NULL,20);
insert into EMP values(7934,"MILLER","CLERK",7782,"23-JAN-82 ",1300,NULL,10);

select * from EMP;


select * from emp where sal>(select sal from emp where ename="BLAKE");

select ename from emp where job=(select job from emp where ename="ALLEN");

 select ename from emp where sal=(select sal from emp where ename="FORD") OR
     sal=(select sal from emp where ename="SMITH") order by ename DESC;

 select ename from emp where job=(select job from emp where ename="MILLER") OR
     sal>(select sal from emp where ename="ALLEN");
     
select ename as 'Highest paid EMp ' from emp where sal=(select max(Sal) from emp where deptno=30);

select * from emp where hiredate < (select max(hiredate) from emp where mgr in (select empno from emp where ename = 'KING')) ;

select e.ename,e.deptno from emp e where e.sal in(select max(sal) from emp group by deptno) ;

select * from emp where sal =(select (max(sal)+min(sal))/2 from emp);

select  *  from  emp  e  where  hiredate  in  (select  hiredate  from  emp  where  e.empno  <> empno);

select * from emp e where hiredate < (select hiredate from emp where empno = e.mgr ) AND  job <> "MANAGER";