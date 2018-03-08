create database JSPServlet_Session5
go
use JSPServlet_Session5
go
create table TblStudent(RollNumber varchar(15)not null primary key,
FullName nvarchar(50), Gender bit, Birthday date, Address nvarchar(200), ClassName nvarchar(100))


insert into TblStudent values ('S0101','Nguyen Tuan Anh',1,'1995-12-21','Ba Vi - Ha Noi','C1507L')
insert into TblStudent values ('S0102','Nguyen Lan Anh',0,'1995-03-12','Soc Son - Ha Noi','C1507L')
insert into TblStudent values ('S0103','Tran Duc Nam',1,'1995-05-08','Hoan Kiem - Ha Noi','C1507L')
insert into TblStudent values ('S0104','Nguyen Thu Phuong',0,'1995-11-21','Quoc Oai - Ha Noi','C1507L')
insert into TblStudent values ('S0105','Dinh Tien Dung',1,'1995-04-07','Gia Lam - Ha Noi','C1507L')

select * from TblStudent
