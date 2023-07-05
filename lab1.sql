use lab1;
 
 create table CLIENT_MASTER(
	clientno varchar(6),
    name varchar(20),
    address1 varchar(30),
    address2 varchar(30),
    city varchar(15),
    pincode int,
    state varchar(15),
    baldue dec(10,2) 
 );
 
 select * from client_master;
 
 insert into client_master values
	('C00001','Ivan bayross','','','Mumbai',400054,'Maharashtra',15000)
  
    
 ;
 
 insert into client_master values
 
	('C00002','Mamta muzumdar','','','Madras',780001,'Tamil nadu',0),
	('C00003','Chhaya bankar','','','Mumbai',400057,'Maharashtra',5000),
    ('C00004','Ashwini joshi','','','Bangalore',560001,'Karnataka',0),
    ('C00005','Hansel colaco','','','Mumbai',400060,'Maharashtra',2000),
    ('C00006','Deepak sharma','','','Mangalore',560050,'Karnataka',0)
 ;
 
 create table PRODUCT_MASTER(
	PRODUCTNO varchar(6),
    DESCRIPTION varchar(15),
    PROFITPERCENT decimal(4,2),
    UNIT_MEASURE varchar(10),
    QTYONHAND int,
    REORDERL_VL int,
    SELLPRICE decimal(8,2),
    COSTPRICE decimal(8,2)
 );
 
 insert into product_master values
 ('P00001','T-Shirt',5,'Piece',200,50,350,250),
 ('P0345','Shirts',6,'Piece',150,50,500,350),
 ('P06734','Cotton jeans',5,'Piece',100,20,600,450),
 ('P07865','Jeans',5,'Piece',100,20,750,500),
 ('P07868','Trousers',2,'Piece',150,50,850,550),
 ('P07885','Pull Overs',2.5,'Piece',80,30,700,450),
 ('P07965','Denim jeans',4,'Piece',100,40,350,250),
 ('P07975','Lycra tops',5,'Piece',70,30,300,175),
 ('P08865','Skirts',5,'Piece',75,30,450,300)
 ;
 
 create table SALESMAN_MASTER(
	SALESMANNO varchar(6),
    SALESMANNAME varchar(20),
    ADDRESS_1 varchar(30),
    ADDRESS_2 varchar(30),
    CITY  varchar(20),
    pincode int,
    state varchar(20),
    SALAMT real,
    TGTTOGET decimal,
    YTDSALES double(6,2),
    REMARKS varchar(60)
    
    
    
 );
 
  select * from SALESMAN_MASTER;
  
  insert into Salesman_Master values("S00001","Aman","A/14","Worli","Mumbai","400002","Maharashtra","3000","100","50","Good"),
("S00002","Omkar","65","Nariman","Mumbai","400001","Maharashtra","3000","200","100","Good"),
("S00003","Raj","P-7","Bandra","Mumbai","400032","Maharashtra","3000","200","100","Good"),
("S00004","Ashish","A/5","Juhu","Mumbai","400044","Maharashtra","3500","200","150","Good");
select * from CLIENT_MASTER;
select * from product_master;
select * from SALESMAN_MASTER;

desc CLIENT_MASTER;
desc product_master;
desc SALESMAN_MASTER;


--Lab 2 started--

use lab1;
select name from client_master;
select * from client_master;
Select Description From Product_Master;
Select * From Client_Master
where City='Mumbai';
Select * from Salesman_Master
where SalAmt=3000;
set sql_safe_updates=0;
update Client_Master
set City="Banglore" 
where Client_No="C00005";
select *from Client_Master;
update Client_Master
set BalDue=1000
where Client_No="C00001";
select *from Client_Master;
update Product_Master
set Cost_Price=950
where Description ="Trousers";
select *from Product_Master;
update Salesman_Master
set City="Pune";
select *from Salesman_Master;
delete from Salesman_Master
where SalAmt=3500;
select *from Salesman_Master;
delete from Product_Master
where Qty_OnHand=100;
select *from Product_Master;
delete from Client_Master
where State="Tamil Nadu";
select *from Client_Master;

alter table Client_Master
add Telephone int;
select *from Client_Master;

alter table Product_Master
modify column Sell_Price decimal(10,2);
select *from Product_Master;

drop table Client_Master;
show tables;

alter table Salesman_master
rename to sman_mast;
show tables;