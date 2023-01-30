DROP TABLE IF EXISTS aankoop;
DROP TABLE IF EXISTS transactie;
DROP TABLE IF EXISTS klant;
DROP TABLE IF EXISTS filiaal;
DROP TABLE IF EXISTS product;

CREATE TABLE klant (klantnummer integer NOT NULL, naam varchar(255), adres varchar(255), woonplaats varchar(255), PRIMARY KEY (klantnummer));
CREATE TABLE filiaal (filiaalnummer integer NOT NULL, plaats varchar(255) NOT NULL, adres varchar(255) NOT NULL, PRIMARY KEY (filiaalnummer));
CREATE TABLE product (productnummer integer NOT NULL, omschrijving varchar(255) NOT NULL, prijs numeric(6, 2) NOT NULL, PRIMARY KEY (productnummer));
CREATE TABLE transactie (transactienummer integer NOT NULL, datum date NOT NULL, tijd time NOT NULL, klantnummer integer NOT NULL, filiaalnummer integer NOT NULL, PRIMARY KEY (transactienummer));
CREATE TABLE aankoop (transactienummer integer NOT NULL, product integer NOT NULL, aantal integer NOT NULL, PRIMARY KEY (transactienummer, product));

ALTER TABLE transactie ADD CONSTRAINT FK_klant_klantnummer FOREIGN KEY (klantnummer) REFERENCES klant (klantnummer);
ALTER TABLE transactie ADD CONSTRAINT FK_filiaal_filiaalnummer FOREIGN KEY (filiaalnummer) REFERENCES filiaal (filiaalnummer);
ALTER TABLE aankoop ADD CONSTRAINT FK_transactie_transactienummer FOREIGN KEY (transactienummer) REFERENCES transactie (transactienummer);
ALTER TABLE aankoop ADD CONSTRAINT FK_product_productnummer FOREIGN KEY (product) REFERENCES product (productnummer);

insert into klant (klantnummer)
values (32210);

insert into klant (klantnummer, naam, adres, woonplaats)
values (32211, 'Kees', 'Kerkstraat 12', 'Groningen');

insert into klant (klantnummer, naam, adres, woonplaats)
values (32212, 'Pieter', 'Bergpad 5', 'Maastricht');

insert into filiaal (filiaalnummer, plaats, adres)
values (12, 'Amsterdam', 'Buitenweg 1');

insert into filiaal (filiaalnummer, plaats, adres)
values (24, 'Maastricht', 'Atoomweg 41');

insert into filiaal (filiaalnummer, plaats, adres)
values (36, 'Groningen', 'Burgerstraat 90');

insert into product (productnummer, omschrijving, prijs)
values (1, 'plank', 6.99);

insert into product (productnummer, omschrijving, prijs)
values (2, 'spijkers', 2.69);

insert into product (productnummer, omschrijving, prijs)
values (3, 'schroeven', 3.35);

insert into product (productnummer, omschrijving, prijs)
values (4, 'hamer', 2.99);

insert into product (productnummer, omschrijving, prijs)
values (5, 'boormachine', 24.49);

insert into transactie (transactienummer, datum, tijd, klantnummer, filiaalnummer)
values (1, '1-11-2022', '15:45', 32210, 12);

insert into aankoop (transactienummer, product, aantal)
values (1, 1, 5);

insert into aankoop (transactienummer, product, aantal)
values (1, 2, 1);

insert into aankoop (transactienummer, product, aantal)
values (1, 4, 1);

insert into transactie (transactienummer, datum, tijd, klantnummer, filiaalnummer)
values (2, '3-12-2022', '12:25', 32212, 24);

insert into aankoop (transactienummer, product, aantal)
values (2, 1, 12);

insert into aankoop (transactienummer, product, aantal)
values (2, 3, 2);

insert into aankoop (transactienummer, product, aantal)
values (2, 5, 1);

insert into transactie (transactienummer, datum, tijd, klantnummer, filiaalnummer)
values (3, '6-12-2022', '10:30', 32211, 36);

insert into aankoop (transactienummer, product, aantal)
values (3, 1, 2);

insert into transactie (transactienummer, datum, tijd, klantnummer, filiaalnummer)
values (4, '6-12-2022', '12:30', 32211, 36);

insert into aankoop (transactienummer, product, aantal)
values (3, 3, 1);

