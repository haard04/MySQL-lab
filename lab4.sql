create database lab4;

use lab4;
CREATE table author(
     Author_id varchar(5),
     Lastname varchar(15) not null,
     firstname varchar(15) not null,
     Email varchar(40),
     City varchar(15),
     country varchar(15),
     primary key(Author_id)
     );
     
create table book(
     book_id varchar(5) primary key,
     book_title varchar(30) not null,
     copies int,
     check(book_id like "B%" and copies > 2)
     );
     
create table author_list(
     author_id varchar(5),
     book_id varchar(5),
     role varchar(15),
     foreign key (author_id) references author(author_id),
	 CONSTRAINT pri_key primary key(author_id,book_id)
     );
 insert into author values("A1","Shah","Haard","haard@gmail.com","Ahmedabad","India");
 insert into author values("A2","Shah","Lassi","lassi@gmail.com","Mumbai","India");
 insert into author values("A3","Parmar","kashish","kvparmar143@gmail.com","Surat","India");
 insert into author values("A4","Patel","shiv","shivie@gmail.com","surat","India");
 
  insert into book values("B1","Book 1",30);
 insert into book values("B2","Book 2",20);
 insert into book values("B3","Book 3",15);
 insert into book values("B4","Book 4",10);
 
 insert into author_list values("A1","B1","Main person");
insert into author_list values("A2","B2","list is imp");
insert into author_list values("A3","B3","r=tired of sql");
insert into author_list values("A2","B3","dbms is boring");


alter table author_list
     add column Publisher varchar(30);
update author_list
     set Publisher = "Haard is publisher"
     where book_id = "B1";
update author_list
     set Publisher = "publisher 2"
     where book_id = "B2";
update author_list
     set Publisher = "publisher 3"
     where book_id = "B3" and author_id="A3";
update author_list
     set Publisher = "publisher 4"
     where book_id = "B3" and author_id="A2";
 
set SQL_safe_updates=0;

show tables;

select * from author;
select * from author_list;
select * from book;

desc author;
desc author_list;
desc book;



