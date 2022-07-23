create database blog
use blog

create table Users(
Id int primary key identity(1,1),
Name nvarchar(20),
Surname nvarchar(20),
Email varchar(40) not null constraint Email_error check(len(Email)>=4 and len(Email)<=100)

);

create table Posts(
Id int primary key identity(1,1),
Like_count int,
Created_at date,
Title nvarchar(70),
Post_text nvarchar(500) not null,
User_id int foreign key references Users(Id)


)

alter table Users 
add unique(Email)

insert into Users
values('farhad', 'shirinli', 'shirinliferhad@gmail.com'),
('Yusif', 'shirin', 'yusifshirin@gmail.com'),
('gulnar', 'shirin', 'gulnarshirin@gmail.com'),
('mahira', 'hasanova', 'mahirahasanova@gmail.com')

insert into Posts
values(1000,'2022-7-23','land of fire','she is beautiful',1),
(500,'2022-7-21','Karabakh is Azerbaijan','travelling',2),
(1000,'2022-7-16','Atashgah temple','old',3),
(1000,'2022-7-19','Icarishahar','castle',4)

