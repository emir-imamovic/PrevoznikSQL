/* Popunjavanje tabele sa vozaÄŤima */
insert into vozac values (1,"Emir", "Imamovic", 22, 1998);
insert into vozac values (?,"Davor", "Stankovic", 27, 2000);
insert into vozac values (?,"Benjamin", "Talic", 25, 2002);
insert into vozac values (?,"Hikmet", "Durgutovic", 25, 1990);
insert into vozac values (?,"Nedzad", "Hamzic", 23, 2001);
insert into vozac values (?,"Jesenko", "Gavric", 23, 1990);
insert into vozac values (?,"Amra", "Poprzanovic", 24, 1990);
insert into vozac values (?,"Sanela", "Grcic", 25, 2001);
insert into vozac values (?,"Emina", "Muratovic", 20, 1990);
/* Popunjavanje tabele za linije */
insert into linija values (1,"Z.stanica", "Bascarsija", 8, 15);
insert into linija values (?,"C.vila", "Bascarsija", 7, 25);
insert into linija values (?,"Ilidza", "Bascarsija", 8, 40);
insert into linija values (?,"Ilidza", "Z.stanica", 9, 30);
insert into linija values (?,"Nedzarici", "Bascarsija", 8, 45);
insert into linija values (?,"Ilidza", "Skenderija", 16, 60);
insert into linija values (?,"Dom Armije", "Podhrastovi", 8, 15);
insert into linija values (?,"Otoka", "Buca potok", 7, 25);
insert into linija values (?,"Drvenija", "Pofalici", 8, 49);
insert into linija values (?,"Park", "Jagomir", 9, 30);
insert into linija values (?,"Dobrinja", "Vijecnica", 8, 43);
insert into linija values (?,"Dobrinja", "Trg Austrije", 10, 60);
insert into linija values (?,"Dobrinja", "Otoka", 8, 41);
insert into linija values (?,"Otoka", "Trg Austrije", 11, 60);


/* Popunjavanje tabele sa vozilima */
insert into vozilo values(1, "Tramvaj");
insert into vozilo values(?, "Trolejbus");
insert into vozilo values(?, "Autobus");

/*Smjena - relacija*/
insert into smjena values(1, 1, 1, 1, 1);
insert into smjena values(?, 2, 2, 3, 2);
insert into smjena values(?, 3, 3, 2, 3);
insert into smjena values(?, 3, 4, 4, 1);
insert into smjena values(?, 2, 5, 5, 1);
insert into smjena values(?, 1, 6, 7, 3);
insert into smjena values(?, 1, 7, 6, 3);
insert into smjena values(?, 2, 8, 8, 2);
insert into smjena values(?, 2, 9, 9, 2);
insert into smjena values(?, 3, 1, 11, 1);
insert into smjena values(?, 3, 2, 13, 2);
insert into smjena values(?, 3, 3, 12, 3);
insert into smjena values(?, 1, 4, 14, 1);
insert into smjena values(?, 1, 5, 1, 1);
insert into smjena values(?, 2, 6, 10, 3);
insert into smjena values(?, 2, 7, 4, 2);
insert into smjena values(?, 1, 8, 6, 2);
insert into smjena values(?, 2, 9, 3, 1);
insert into smjena values(?, 2, 1, 14, 3);
insert into smjena values(?, 3, 5, 1, 2);
insert into smjena values(?, 1, 9, 10, 1);
insert into smjena values(?, 2, 7, 4, 2);
insert into smjena values(?, 3, 3, 6, 3);
insert into smjena values(?, 2, 8, 3, 1);