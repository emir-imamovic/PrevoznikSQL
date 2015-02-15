.header on
pragma foreign_keys = on;

create table Vozac(
id integer primary key,
ime varchar(15) not null,
prezime varchar(20) not null,
broj_godina integer not null,
godina_zaposlenja integer default 1900
);

create table Linija(
id integer primary key,
start varchar(15) not null,
kraj varchar(15) not null,
prva_voznja Integer,
interval integer
);

create table Vozilo(
id integer primary key,
tip varchar(20) not null
);

create table Smjena(
smjena_id integer primary key,
smjena smallint,
vozac_id,
linija_id,
vozilo_id,
foreign key (vozac_id) references Vozac,
foreign key (linija_id) references Linija,
foreign key (vozilo_id) references Vozilo
);