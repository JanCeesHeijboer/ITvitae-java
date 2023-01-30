drop table if exists boek;
drop table if exists auteur;
drop table if exists uitgever;
drop table if exists account;
drop table if exists filiaal;
drop table if exists voorraad;
drop table if exists winkelmandje;

-- create the required tables for the database.
create table boek(ISBN bigint not null, jaar_van_uitgave integer not null, titel varchar(255) not null, auteur varchar(255) not null, uitgever varchar(255) not null, prijs float not null);
create table auteur(naam varchar(255) not null, geboortejaar integer not null, wikipedia varchar(255) not null);
create table uitgever(naam varchar(255) not null, adres varchar(255) not null, plaats varchar(255) not null, telefoonnummer integer not null, url varchar(255) not null);
create table account(emailadres varchar(255) not null, naam varchar(255) not null, telefoonnummer integer not null, adres varchar(255) not null, plaats varchar(255) not null);
create table filiaal(plaats varchar(255) not null, adres varchar(255) not null, telefoonnummer integer not null);
create table voorraad(filiaal varchar(255) not null, titel varchar(255) not null, aantal integer not null);
create table winkelmandje(emailadres varchar(255) not null, boek varchar(255) not null, prijs decimal(5, 2) not null, aantal integer not null);

-- insert data into 'filiaal'.
insert into filiaal(plaats, adres, telefoonnummer)
values 
('Amsterdam', 'Rokin 9', 020-5231481),
('Den Haag', 'Coolsingel 129', 010-4132070), 
('Utrecht', 'Oudegracht 112-b', 030-2335200), 
('''s-Hertogenbosch', 'Kerkstraat 27', 073-3020100);

--insert data from my ten favourite books into 'boek'.
insert into boek(ISBN, jaar_van_uitgave, titel, auteur, uitgever, prijs)
values(9789049927479, 1953, 'Kabaal om een varkensleren koffer', 'Willy van der Heide', 'Stenvert, Meppel', 15.75);

insert into boek(ISBN, jaar_van_uitgave, titel, auteur, uitgever, prijs)
values(9789025752828, 2012, 'Halt in gevaar', 'John Flanagan', 'Gottmer Uitgevers Groep b.v.', 19.99);

insert into boek(ISBN, jaar_van_uitgave, titel, auteur, uitgever, prijs)
values(0306826755, 2022, 'A hard kick in the nuts, what I''ve learnt from a lifetime of terible decisions', 'Steve O', 'Hachette Books International', 21.67);

insert into boek(ISBN, jaar_van_uitgave, titel, auteur, uitgever, prijs)
values(9780137921713, 2022, 'Core Java: Fundamentals, Volume 1, 12th edition', 'Cay S. Horstmann', 'Pearson', 56.52);

insert into boek(ISBN, jaar_van_uitgave, titel, auteur, uitgever, prijs)
values(9789076061771, 2004, 'Moord in Ommoord', 'Ben de Raaf', 'Den Hertog, Houten', 13.45);

insert into boek(ISBN, jaar_van_uitgave, titel, auteur, uitgever, prijs)
values(9789076061771, 2010, 'De tombe van de Tempeliers', 'Bert Wiersema', 'Royal Jongbloed', 14.99);

insert into boek(ISBN, jaar_van_uitgave, titel, auteur, uitgever, prijs)
values(9789033100345, 1678, 'De christenreis naar de eeuwigheid', 'John Bunyan', 'Den Hertog B.V.', 14.65);

insert into boek(ISBN, jaar_van_uitgave, titel, auteur, uitgever, prijs)
values(9780140445336, 1989, 'Sickness Unto Death', 'Søren Aabye Kierkegaard', 'Penguin Books Ltd', 10.99);

insert into boek(ISBN, jaar_van_uitgave, titel, auteur, uitgever, prijs)
values(9789045112442, 2011, 'Ilios & Odysseus', 'Imme Dros', 'Singel uitgeverijen', 22.99); 

insert into boek(ISBN, jaar_van_uitgave, titel, auteur, uitgever, prijs)
values(9789020415605, 1851, 'Moby-Dick, of the whale',  'Herman Melville', 'Penguin Classics', 17.50);

-- insert data into 'auteur'
insert into auteur(naam, geboortejaar, wikipedia)
values('Willy van der Heide', 1915, 'https://nl.wikipedia.org/wiki/Willem_van_den_Hout');

insert into auteur(naam, geboortejaar, wikipedia)
values('John Flanagan', 1944, 'https://nl.wikipedia.org/wiki/John_Flanagan_(schrijver)');

insert into auteur(naam, geboortejaar, wikipedia)
values('Steve O', 1974, 'https://en.wikipedia.org/wiki/Steve-O');

insert into auteur(naam, geboortejaar, wikipedia)
values('Cay S. Horstmann', 1959, 'https://en.wikipedia.org/wiki/Cay_Horstmann');

insert into auteur(naam, geboortejaar, wikipedia)
values('Ben de Raaf', 1961, 'https://nl.wikipedia.org/wiki/Ben_de_Raaf');

insert into auteur(naam, geboortejaar, wikipedia)
values('Bert Wiersema', 1959, 'https://nl.wikipedia.org/wiki/Bert_Wiersema');

insert into auteur(naam, geboortejaar, wikipedia)
values('John Bunyan', 1628, 'https://nl.wikipedia.org/wiki/John_Bunyan');

insert into auteur(naam, geboortejaar, wikipedia)
values('Søren Aabye Kierkegaard', 1813, 'https://nl.wikipedia.org/wiki/S%C3%B8ren_Kierkegaard');

insert into auteur(naam, geboortejaar, wikipedia)
values('Imme Dros', 1936, 'https://nl.wikipedia.org/wiki/Imme_Dros');

insert into auteur(naam, geboortejaar, wikipedia)
values('Herman Melville', 1819, 'https://nl.wikipedia.org/wiki/Herman_Melville');

-- insert data into 'uitgever' (3/10)
insert into uitgever(naam, adres, plaats, telefoonnummer, url)
values('M.Stenvert & zoon - uitgevers te Meppel', 'Duivenwaardseweg 7A', 'Nieuwe-Tonge', 0653709110, 'https://www.wilstrabooks.nl/uitgever/m-stenvert-zoon-uitgevers-te-meppel/');

insert into uitgever(naam, adres, plaats, telefoonnummer, url)
values('Gottmer Uitgevers Groep b.v.', 'Zijlweg 308', 'Haarlem', 0235411190, 'https://gottmer.nl/');

insert into uitgever(naam, adres, plaats, telefoonnummer, url)
values('Hachette Books ', '020 Macklin St', 'London', 2031226000, 'https://hachette-books-international.business.site/?utm_source=gmb&utm_medium=referral');

insert into uitgever(naam, adres, plaats, telefoonnummer, url)
values('Pearson Benelux BV', 'Kabelweg 37', 'Amsterdam',  0205755800, 'https://www.pearson.com/nl/');

insert into uitgever(naam, adres, plaats, telefoonnummer, url)
values('Uitgeverij en Boekhandel Den Hertog bv', 'Elzenkade 6', 'Houten', 0306373434, 'https://www.hertog.nl/');

insert into uitgever(naam, adres, plaats, telefoonnummer, url)
values('Royal Jongbloed', 'Marktweg 73a', 'Heerenveen', 0883263340, 'https://www.royaljongbloed.com/nl/');

insert into uitgever(naam, adres, plaats, telefoonnummer, url)
values('Penguin Books ltd', '20 Vauxhall Bridge Rd', 'London', 02078408400, 'https://www.penguin.co.uk/');

insert into uitgever(naam, adres, plaats, telefoonnummer, url)
values('Singel Uitgeverijen', 'Weteringschans 259', 'Amsterdam', 0207607210, 'https://www.singeluitgeverijen.nl/');

-- insert data into 'voorraad', there have to be at least 50 copies divided among the filials.
--'kabaal om een varkensleren koffer'
insert into voorraad(filiaal, titel, aantal)
values('Amsterdam', 'kabaal om een varkensleren koffer', 20);

insert into voorraad(filiaal, titel, aantal)
values('Den Haag', 'kabaal om een varkensleren koffer', 20);

insert into voorraad(filiaal, titel, aantal)
values('Utrecht', 'kabaal om een varkensleren koffer', 20);

insert into voorraad(filiaal, titel, aantal)
values('''s-Hertogenbosch', 'kabaal om een varkensleren koffer', 10);

--'Halt in gevaar'
insert into voorraad(filiaal, titel, aantal)
values('Amsterdam', 'Halt in gevaar', 30);

insert into voorraad(filiaal, titel, aantal)
values('Den Haag', 'Halt in gevaar', 10);

insert into voorraad(filiaal, titel, aantal)
values('Utrecht', 'Halt in gevaar', 25);

insert into voorraad(filiaal, titel, aantal)
values('''s-Hertogenbosch', 'Halt in gevaar', 15);

--'A hard kick in the nuts, what I''ve learnt from I lifetime of terible decisions'
insert into voorraad(filiaal, titel, aantal)
values('Amsterdam', 'A hard kick in the nuts, what I''ve learnt from I lifetime of terible decisions', 150);

insert into voorraad(filiaal, titel, aantal)
values('Den Haag', 'A hard kick in the nuts, what I''ve learnt from I lifetime of terible decisions', 85);

insert into voorraad(filiaal, titel, aantal)
values('Utrecht', 'A hard kick in the nuts, what I''ve learnt from I lifetime of terible decisions', 3);

insert into voorraad(filiaal, titel, aantal)
values('''s-Hertogenbosch', 'A hard kick in the nuts, what I''ve learnt from I lifetime of terible decisions', 233);

--'Core Java: Fundamentals, Volume 1, 12th edition'
insert into voorraad(filiaal, titel, aantal)
values('Amsterdam', 'Core Java: Fundamentals, Volume 1, 12th edition', 30);

insert into voorraad(filiaal, titel, aantal)
values('Den Haag', 'Core Java: Fundamentals, Volume 1, 12th edition', 14);

insert into voorraad(filiaal, titel, aantal)
values('Utrecht', 'Core Java: Fundamentals, Volume 1, 12th edition', 5);

insert into voorraad(filiaal, titel, aantal)
values('''s-Hertogenbosch', 'Core Java: Fundamentals, Volume 1, 12th edition', 1);

--'Moord in Ommoord'
insert into voorraad(filiaal, titel, aantal)
values('Amsterdam', 'Moord in Ommoord', 3);

insert into voorraad(filiaal, titel, aantal)
values('Den Haag', 'Moord in Ommoord', 8);

insert into voorraad(filiaal, titel, aantal)
values('Utrecht', 'Moord in Ommoord', 16);

insert into voorraad(filiaal, titel, aantal)
values('''s-Hertogenbosch', 'Moord in Ommoord', 23);

--'De tombe van de Tempeliers'
insert into voorraad(filiaal, titel, aantal)
values('Amsterdam', 'De tombe van de Tempeliers', 3);

insert into voorraad(filiaal, titel, aantal)
values('Den Haag', 'De tombe van de Tempeliers', 21);

insert into voorraad(filiaal, titel, aantal)
values('Utrecht', 'De tombe van de Tempeliers', 9);

insert into voorraad(filiaal, titel, aantal)
values('''s-Hertogenbosch', 'De tombe van de Tempeliers', 17);

--'De christenreis naar de eeuwigheid'
insert into voorraad(filiaal, titel, aantal)
values('Amsterdam', 'De christenreis naar de eeuwigheid', 250);

insert into voorraad(filiaal, titel, aantal)
values('Den Haag', 'De christenreis naar de eeuwigheid', 250);

insert into voorraad(filiaal, titel, aantal)
values('Utrecht', 'De christenreis naar de eeuwigheid', 250);

insert into voorraad(filiaal, titel, aantal)
values('''s-Hertogenbosch', 'De christenreis naar de eeuwigheid', 250);

--'Sickness Unto Death'
insert into voorraad(filiaal, titel, aantal)
values('Amsterdam', 'Sickness Unto Death', 15);

insert into voorraad(filiaal, titel, aantal)
values('Den Haag', 'Sickness Unto Death', 45);

insert into voorraad(filiaal, titel, aantal)
values('Utrecht', 'Sickness Unto Death', 16);

insert into voorraad(filiaal, titel, aantal)
values('''s-Hertogenbosch', 'Sickness Unto Death', 39);

--'Ilios & Odysseus'
insert into voorraad(filiaal, titel, aantal)
values('Amsterdam', 'Ilios & Odysseus', 14);

insert into voorraad(filiaal, titel, aantal)
values('Den Haag', 'Ilios & Odysseus', 15);

insert into voorraad(filiaal, titel, aantal)
values('Utrecht', 'Ilios & Odysseus', 13);

insert into voorraad(filiaal, titel, aantal)
values('''s-Hertogenbosch', 'Ilios & Odysseus', 8);

--'Mody-Dick, of the whale'
insert into voorraad(filiaal, titel, aantal)
values('Amsterdam', 'Mody-Dick, of the whale', 4);

insert into voorraad(filiaal, titel, aantal)
values('Den Haag', 'Mody-Dick, of the whale', 2);

insert into voorraad(filiaal, titel, aantal)
values('Utrecht', 'Mody-Dick, of the whale', 1);

insert into voorraad(filiaal, titel, aantal)
values('''s-Hertogenbosch', 'Mody-Dick, of the whale', 43);

-- insert customers into table 'account'
insert into account(emailadres, naam, telefoonnummer, adres, plaats)
values('a_devries@adelaarsnest.nl', 'Arend de Vries', 0612345678, 'Adelaarsnest 12', 'Haarlem');

insert into account(emailadres, naam, telefoonnummer, adres, plaats)
values('bboer@boeren.nl', 'Bert Boer', 0623456789, 'Mesthoop 1', 'Dorp');

insert into account(emailadres, naam, telefoonnummer, adres, plaats)
values('c_kordaat@gmail.com', 'Cornelis Kordaat', 0634567890, 'Kerkstraat 11', 'Utrecht');

-- insert data into table 'winkelmandje' customer: 'Arend de Vries'
insert into winkelmandje(emailadres, boek, prijs, aantal)
values('a_devries@adelaarsnest.nl', 'Kabaal om een varkensleren koffer', 15.75, 1);

insert into winkelmandje(emailadres, boek, prijs, aantal)
values('a_devries@adelaarsnest.nl', 'Halt in gevaar', 19.99, 1);

insert into winkelmandje(emailadres, boek, prijs, aantal)
values('a_devries@adelaarsnest.nl', 'A hard kick in the nuts, what I''ve learnt from a lifetime of terible decisions''', 21.67, 1);

-- insert data into table 'winkelmandje' customer: 'Bert Boer'
insert into winkelmandje(emailadres, boek, prijs, aantal)
values('bboer@boeren.nl', 'A hard kick in the nuts, what I''ve learnt from a lifetime of terible decisions''', 21.67, 4);

-- insert data into table 'winkelmandje' customer: 'Cornelis Kordaat'
insert into winkelmandje(emailadres, boek, prijs, aantal)
values('c_kordaat@gmail.com', 'Kabaal om een varkensleren koffer', 15.75, 3);

-- 1.4.1 Haal van alle boeken ISBN, naam op en daarbij hoeveel deze in totaal in een winkel-mandje zitten.
select ISBN, titel
from boek
right join winkelmandje on boek = titel;

select boek, aantal
from winkelmandje;

-- 1.4.2
select sum(aantal)
from winkelmandje
where boek = 'kabaal om een varkensleren koffer';

select sum(aantal)
from winkelmandje
where boek = 'Halt in gevaar';

select sum(aantal)
from winkelmandje
where boek = 'A hard kick in the nuts, what I''ve learnt from a lifetime of terible decisions''';

select emailadres, naam
from klant
where adres = 'Adelaarsnest 12';

select boek, aantal
from winkelmandje
where emailadres = 'a_devries@adelaarsnest.nl';

-- 1.4.3
select adres, plaats
from filiaal;

select titel, aantal, filiaal
from voorraad;

-- 1.4.4
select U.telefoonnummer, B.auteur, A.geboortejaar, B.uitgever
from boek B
left join auteur A on B.auteur = A.naam
left join uitgever U on B.uitgever = U.naam;

-- 1.4.5
select titel
from boek 
where titel like 'a%' || 'b%';

-- 1.4.6
select U.naam, AVG(B.prijs)
from uitgever U
right join boek B on U.naam = B.titel
group by U.naam;

--1.4.7
select sum(aantal)
from winkelmandje
where prijs > 10;

select sum(aantal)
from winkelmandje
where emailadres = 'a_devries@adelaarsnest.nl';