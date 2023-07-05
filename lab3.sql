create database lab3;
use lab3;
create table CLIENT_MASTER_1(
	CLIENTNO varchar(6) primary key,
	name varchar(20) not null,
	address1 varchar(30),
	address2 varchar(30),
	city varchar(15),
	pincode int(8),
	state varchar(15),
	baldue decimal(10,2)
     );
    alter table CLIENT_MASTER_1
    add check(clientno like 'C%');
    
    create table PRODUCT_MASTER_1 (
     PRODUCTNO varchar(6) primary key,
     DESCRIPTION varchar(15) not null,
     PROFITPERCENT decimal(4,2) not null,
     UNITMEASURE varchar(10) not null,
     QTYONHAND int(8) not null,
     REORDERLVL int(8) not null,
     SELLPRICE  decimal(8,2) not null,
     COSTPRICE decimal(8,2) not null,
     check (PRODUCTNO like 'P%')
     );
    
    desc  CLIENT_MASTER_1;
    desc product_master_1;
    
    create table  SALESMAN_MASTER_1 (
     SALESMANNO varchar(6) primary key,
     SALESMANNAME varchar(20) not null,
     ADDRESS1 varchar(30) not null,
     ADDRESS2 varchar(30) ,
     city varchar(20),
     pincode int(8),
     state varchar(20),
     salamt real(8,2) not null,
     tgttoget decimal(6,2) not null,
     YTDSALES double (6,2) not null,
     remarks varchar(60),
     check (SALESMANNO like 'S%' and salamt <> 0 and tgttoget <> 0)
     );
     
     desc salesman_master_1;
     
     
INSERT INTO CLIENT_MASTER_1 VALUES ('C00001','IVAN BAYROSS',NULL,NULL,'MUMBAI',400054,'MAHARASTRA',15000),
	('C00002','MAMTA MUZUMDAR',NULL,NULL,'MADRAS',780001,'TAMIL NADU',0),
    ('C00003','CHHAYA BANKAR',NULL,NULL,'MUMBAI',400057,'MAHARASTRA',5000),
    ('C00004','ASHWINI JOSHI',NULL,NULL,'BANGALORE',560001,'KARNATAKA',0),
    ('C00005','HANSEL COLAC0',NULL,NULL,'MUMBAI',400060,'MAHARASTRA',2000),
    ('C00006','DEEPAK SHARMA',NULL,NULL,'MANGALORE',560050,'KARNATAKA',0);
  
  
INSERT INTO PRODUCT_MASTER_1 VALUES ('P00001','T-SHIRT',5,'PIECE',200,50,350,250),
('P0345','SHIRTS',6,'PIECE',150,50,500,350),
('P06734','COTTON JEANS',5,'PIECE',100,20,600,450),
('P07865','JEANS',5,'PIECE',100,20,750,500),
('P07868','TROUSERS',2,'PIECE',150,50,850,550),
('P07885','PULL OVERS',2.5,'PIECE',80,30,700,450),
('P07975','LYCRA TOPS',5,'PIECE',70,30,300,175),
('P08865','SKIRTS',5,'PIECE',75,30,450,300);


INSERT INTO SALESMAN_MASTER_1 VALUES ('S00001','AMAN','A/14','WORLI','MUMBAI',400002,'MAHARASTRA',3000,100,50,'GOOD'),
('S00002','OMKAR','65','NARIMAN','MUMBAI',400001,'MAHARASTRA',3000,200,100,'GOOD'),
('S00003','RAJ','P-7','BANDRA','MUMBAI',400032,'MAHARASTRA',3000,200,100,'GOOD'),
('S00004','ASHISH','A/5','JUHU','MUMBAI',400044,'MAHARASTRA',3500,200,150,'GOOD');


SELECT * FROM CLIENT_MASTER_1;
SELECT * FROM PRODUCT_MASTER_1;
SELECT * FROM SALESMAN_MASTER_1;

    
    