drop database if exists sqldemo7;
create database sqldemo7;
use sqldemo7;
create table books(book_id int primary key,title varchar(100),author varchar(100),isbn varchar(20),genre varchar(50),publisher varchar(100),publication_date date);
create table branch(branch_id int primary key,branch_name varchar(30),address varchar(100),phone_number int(10),email varchar(20) unique);
create table book_copies(copy_id int primary key,status varchar(20),due_date date,book_id int,branch_id int,foreign key (book_id) references books(book_id),foreign key (branch_id) references branch(branch_id));
create table members(member_id int auto_increment primary key,first_name varchar(20),last_name varchar(20),phone_number varchar(10),email varchar(20) unique,address varchar(100),membership_expiry_date date);
create table checkouts(checkout_id int  primary key,checkout_date date,return_date date,due_date date,copy_id int,member_id int,foreign key(copy_id) references book_copies(copy_id),foreign key (member_id) references members(member_id));
create table fine(fine_id int primary key,copy_id int,fine_amount int,fine_date date,status varchar(20),member_id int,foreign key(copy_id) references book_copies(copy_id),foreign key(member_id) references members(member_id));
create table job_rolls(job_id int primary key,role_name varchar(50),salary int);
create table employee(emp_id int primary key,first_name varchar(50),last_name varchar(50),phone_number int,email varchar(30) unique,address varchar(100),date_of_hire date,job_id int,foreign key (job_id) references job_rolls(job_id));
create table inventory(inventory_id int primary key,book_id int,quantity int,date_added date,date_modified date,branch_id int,foreign key (book_id) references books(book_id),foreign key (branch_id) references branch(branch_id));
insert into books values(1,"helloworld","sharmila",71,"humour","alexa","2024-11-08");
select * from books;
insert into job_rolls values(1,"play",2000);
select * from job_rolls;
insert into members(first_name,phone_number,email) values ("sharmila",78888,"shaik");
select * from members;






