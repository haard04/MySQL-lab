create database lab8;
use lab8;
create table DEPT_TABLE(
deptno int primary key,
dname varchar(30),
loc varchar(30)
);
insert into DEPT_TABLE values (10,"ACCOUNTING","NEW YORK");
insert into DEPT_TABLE values (20,"RESEARCH","DALLAS");
insert into DEPT_TABLE values (30,"SALES","CHICAGO");
insert into DEPT_TABLE values (40,"OPERATION","BOSTON");

create table EMP(
    EMPNO int,
     ENAME varchar(30),
     JOb varchar(30),
     MGR int,
     HIREDATE date,
     SAL int,
     COMM int,
     DEPTNO int,
     foreign key (deptno) references dept_table(deptno)
     );
insert into EMP values (7369,"SMITH","CLERK",7902,"1980-12-17",500,800,20),
        (7499,"ALLEN","SALESMAN",7689,"1981-02-20",1600,300,30),
        (7521,"WARD","SALESMAN",7698,"1981-02-22",1250,500,30),
        (7566,"JONES","MANAGER",7839,"1981-04-02",2975,null,20),
        (7654,"MARTIN","SALESMAN",7698,"1981-09-28",1250,1400,30),
        (7698,"BLAKE","MANAGER",7839,"1981-05-01",2850,NULL,30),
        (7782,"CLARK","MANAGER",7839,"1981-06-09",2450,NULL,10), 
        (7788,"SCOTT","ANALYST",7566,"1982-12-09",3000,NULL,20),
		(7839,"KING","PRESIDENT",NULL,"1981-11-17 ",5000,NULL,10),
        (7844,"TURNER","SALESMAN",7698,"1981-10-08",1500,0,30),
        (7876,"ADAMS","CLERK",7788,"1983-01-12",1100,NULL,20),
        (7900,"JAMES","CLERK",7698,"1981-12-03",950,NULL,30),
        (7902,"FORD","ANALYST",7566,"1981-12-03",3000,NULL,20),
        (7934,"MILLER","CLERK",7782,"1982-01-23",1300,NULL,10);

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

select * from EMP e where hiredate < (select hiredate from EMP where empno = e.mgr );






select DEPTNO from DEPT_TABLE where DEPTNO not in (select distinct(DEPTNO) from EMP);

select DEPTNO,JOB,count(EMPNO) as No_of_employees,avg(SAL) as average_salary from EMP group by JOB,DEPTNO;

select JOB,avg(SAL) as average_salary from EMP where JOB <> 'PRESIDENT' group by JOB;

select * from DEPT_TABLE where DEPTNO in (select DEPTNO from EMP group by DEPTNO having count(EMPNO) >= 2);

select DEPTNO,count(EMPNO) as No_of_employees from EMP group by DEPTNO having count(EMPNO) > 3;

select ENAME,DEPTNO from EMP where SAL in (select max(SAL) from EMP group by DEPTNO);


select DEPTNO, avg(SAL) from EMP group by DEPTNO having avg(SAL) < (select avg(SAL) from EMP);