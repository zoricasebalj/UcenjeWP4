use master;
go
drop database if exists wellness;
go
create database wellness;
go
use wellness;
create table klijenti(
sifra int not null primary key identity (1,1),
ime varchar(20)not null,
prezime varchar(30) not null,
email varchar (50) not null
);

create table termini(
sifra int not null primary key identity(1,1),
datum datetime not null,
klijent int not null,
usluga int not null,
zaposlenik int);

create table usluge(
sifra int not null primary key identity(1,1),
vrstausluge varchar(50)not null,
trajanje datetime not null,
cijena decimal(18,2)not null,
);
create table zaposlenici(
sifra int not null primary key identity (1,1),
ime varchar(20)not null,
prezime varchar(30)not null,
strucnost varchar(50),
);