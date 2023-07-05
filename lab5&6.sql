create database lab6;

use lab6;

create table supplier(
scode varchar(5),
sname varchar(255),
scity varchar(255),
turnover int,
primary key(scode)
);
select * from supplier;
insert into supplier values("s1","shiv","mumbai",null);
insert into supplier values("s2","haard","surat",60);
insert into supplier values("s3","lassi","pune",70);
insert into supplier values("s4","bob","nagpur",30);
insert into supplier values("s5","smoker","manali",80);
insert into supplier values("s6","darshil","ahmedabad",90);
insert into supplier values("s7","kanishka","bombay",50);
insert into supplier(scode,sname,scity) values ("s9","vrunda","gandhinagar");
create table part(
pcode varchar(5),
weight int,
colour varchar(255),
cost int,
sellingprice int,
primary key(pcode)
);

insert into part values("p1",20,"red",10,300000);
insert into part values("p2",25,"yellow",20,350000);
insert into part values("p3",30,"pink",30,400000);
insert into part values("p4",35,"white",40,450000);
insert into part values("p5",40,"blue",50,100000);
insert into part values("p7",45,"black",60,190000);
insert into part values("p8",50,"red",70,690000);
insert into part values("p9",55,"violet",80,350000);
create table supplier_part(
scode varchar(5),
pcode varchar(5),
qty int,
constraint pri_key primary key(scode,pcode)
);

alter table supplier_part
add foreign key (scode) references supplier(scode);
alter table supplier_part
add foreign key (pcode) references part(pcode);
insert into supplier_part values("s1","p1",4);
insert into supplier_part values("s2","p2",7);
insert into supplier_part values("s3","p3",9);
insert into supplier_part values("s4","p8",10);
select *from supplier_part;

select scode,pcode from supplier_part order by scode;

select *from supplier where scity="Bombay" and turnover=50;

select count(scode) as "total supplier number "from supplier;

select pcode from part where weight between 25 and 40;

select *from supplier where turnover is null;

select pcode from part where cost =30 or cost=20 or cost=40;

select sname from supplier where scode=(select scode from supplier_part where supplier_part.pcode="p2");

select scode,turnover from supplier order by turnover DESC; 

select pcode from part where cost>(select avg(cost) from part);

select qty from supplier_part where pcode = "p2";
