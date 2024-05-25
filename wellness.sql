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
trajanje int not null,
cijena decimal(18,2)not null,
);
create table zaposlenici(
sifra int not null primary key identity (1,1),
ime varchar(20)not null,
prezime varchar(30)not null,
strucnost varchar(50),
);

alter table termini add foreign key (klijent) references klijenti(sifra);
alter table termini add foreign key (usluga) references usluge(sifra);
alter table termini add foreign key (zaposlenik) references zaposlenici(sifra);


insert into klijenti(ime,prezime,email)
values ('Ivan','Horvat','ivanhorvat@gmail.com');




insert into usluge(vrstausluge,trajanje,cijena)
values ('masaža',1,49.99);

insert into zaposlenici(ime,prezime,strucnost)
values ('Pero','Perić','fizioterapetut');

insert into termini(datum,klijent,usluga,zaposlenik)
values ('2024-05-21 16:00',1,'1','1');

select* from klijenti;
select* from usluge;
select*from zaposlenici;
select*from termini;


