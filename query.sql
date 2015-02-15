/* Izlistati sve vozace zajedno za identifikacijskim brojem
 i tipom vozila koja su koristili */
select vozac.ime as ime, vozac.prezime as prezime, 
vozac.id as idVozaca vozilo.tip as tipVozila, from vozac
inner join Vozilo on vozilo.id = vozac.id
;

/*Izlistati sve tramvajske linije - polazna stanica i krajnja stanica*/
select linija.start as polazna, linija.kraj as krajnja from linija
inner join Vozilo on vozilo.id = linija.id
where vozilo.tip = "Tramvaj";

/*Izlistati sve trolejbuske linije - polazna stanica i krajnja stanica*/
select linija.start, linija.kraj from linija
inner join Vozilo on vozilo.id = linija.id
where vozilo.tip = "Trolejbus";

/*Izlistati sve autobuske linije - polazna stanica i krajnja stanica*/
select linija.start, linija.kraj from linija
inner join Vozilo on vozilo.id = linija.id
where vozilo.tip = "Autobus"; 

/*Izlistati sve stanice sa kojih polaze autobusi i trolejbusi*/
select linija.start from linija
inner join Vozilo on vozilo.id = linija.id
where vozilo.tip = "Autobus" or vozilo.tip = "Trolejbus";

/*Izlistati sve stanice sa kojih polaze autobusi i tramvaji*/
select linija.start from linija
inner join Vozilo on vozilo.id = linija.id
where vozilo.tip = "Tramvaj" or vozilo.tip = "Autobus";

/*Napisati query koji ce vratiti prosjek godina vozaca*/
select avg(broj_godina) from Vozac;

/*Query koji ce ispisati prosjek godina rada u firmi za vozace*/
select avg (godina_zaposlenja) from Vozac;

/*Napisati ime i prezime najstarijeg vozaca*/
select max (broj_godina), vozac.ime, vozac.prezime from Vozac;



/*Za odredenu stanicu napisati sve linije koje polaze sa te stanice, 
ispis sortirati po frekvenciji voznje na liniji*/
select linija.start as Stanica, linija.start as PocetnaStanica, 
linija.kraj as KrajnjaStanica, linija.interval as Interval from linija 
order by interval ASC limit 1
;


/*Za odredenu liniju ispisati sve vozace koji rade na toj liniji*/
select linija.start as PocetnaStanica, linija.kraj as Krajnja, 
vozac.ime as Ime, vozac.prezime as Prezime from Linija
inner join Vozac on vozac.id = linija.id
; 


/* Za odredjeno vozilo sve vozace koji su ga koristili*/
select vozilo.tip as Vozilo, vozac.ime as ImeVozaca, vozac.prezime as PrezimeVozaca from Vozilo
inner join Vozac on vozac.id = vozilo.id
where vozilo.tip = "Tramvaj"
;

/* Imena vozaca koji voze na liniji sa rednim brojem 1
 i liniji sa rednim brojem 20*/
select vozac.ime as ImeVozaca, linija.id as Linija from vozac
inner join linija on linija.id = vozac.id
where linija.id = 1 or linija.id = 10
;

/* Izlistati vozace koji rade u prvoj smijeni*/
select linija.start as Pocetna, linija.kraj as Krajnja from linija
inner join Vozilo on vozilo.id = linija.id
inner join Smjena on smjena.id = 
where smjena.id = 1;

/*Izlistati vozace koji rade u prvoj smjeni a voze autobuse.*/
select vozac.ime as ImeVozaca, smjena.smjena as Smjena, 
vozilo.tip as TipVozila from vozac
inner join Smjena on smjena.smjena_id = vozac.id
inner join Vozilo on vozilo.id = smjena.smjena_id
where smjena.smjena = 1 and vozilo.tip = "Autobus"
;


/*Izlistati sve polazne stanice za odredenog vozaca*/
select vozac.ime as ImeVozaca, smjena.linija_id as ID, linija.start as Pocetna from Vozac
inner join Smjena on smjena.vozac_id = vozac.id
inner join Linija on linija.id = smjena.linija_id
where vozac.ime = "Benjamin"
;