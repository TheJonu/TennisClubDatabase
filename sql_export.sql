/*
Created: 11.11.2020
Modified: 17.11.2020
Project: Klub Tenisowy
Model: Model logiczny
Company: EiTI PW
Author: JS, KK
Version: 2.0
Database: Oracle 19c
*/


-- Create tables section -------------------------------------------------

-- Table Klub

CREATE TABLE "Klub"(
  "Nr_klubu" Integer NOT NULL,
  "Nazwa" Varchar2(30 ) NOT NULL,
  "Data_zalozenia" Date NOT NULL,
  "Wlasciciel" Varchar2(60 ) NOT NULL,
  "Konto_bankowe" Varchar2(40 ) NOT NULL,
  "Nr_adresu" Integer
)
/

-- Create indexes for table Klub

CREATE INDEX "IX_Relationship8" ON "Klub" ("Nr_adresu")
/

-- Add keys for table Klub

ALTER TABLE "Klub" ADD CONSTRAINT "Nr_klubu" PRIMARY KEY ("Nr_klubu")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Klub"."Nr_klubu" IS 'Numer klubu'
/
COMMENT ON COLUMN "Klub"."Nazwa" IS 'Nazwa klubu'
/
COMMENT ON COLUMN "Klub"."Data_zalozenia" IS 'Data zalozenia klubu'
/
COMMENT ON COLUMN "Klub"."Wlasciciel" IS 'Wlasciciel klubu'
/
COMMENT ON COLUMN "Klub"."Konto_bankowe" IS 'Konto bankowe'
/
COMMENT ON COLUMN "Klub"."Nr_adresu" IS 'Numer adresu klubu'
/

-- Table Pracownik

CREATE TABLE "Pracownik"(
  "Nr_pracownika" Integer NOT NULL,
  "Imie" Varchar2(30 ) NOT NULL,
  "Nazwisko" Varchar2(30 ) NOT NULL,
  "Data_urodzenia" Date NOT NULL,
  "PESEL" Char(11 ),
  "Plec" Char(1 )
        CHECK ("Plec" IN ('M', 'K')),
  "Nr_adresu" Integer
)
/

-- Create indexes for table Pracownik

CREATE INDEX "IX_Relationship9" ON "Pracownik" ("Nr_adresu")
/

-- Add keys for table Pracownik

ALTER TABLE "Pracownik" ADD CONSTRAINT "Nr_pracownika" PRIMARY KEY ("Nr_pracownika")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Pracownik"."Nr_pracownika" IS 'Numer pracownika'
/
COMMENT ON COLUMN "Pracownik"."Imie" IS 'Imie pracownika'
/
COMMENT ON COLUMN "Pracownik"."Nazwisko" IS 'Nazwisko pracownika'
/
COMMENT ON COLUMN "Pracownik"."Data_urodzenia" IS 'Data urodzenia pracownika'
/
COMMENT ON COLUMN "Pracownik"."PESEL" IS 'PESEL pracownika'
/
COMMENT ON COLUMN "Pracownik"."Plec" IS 'Plec pracownika'
/
COMMENT ON COLUMN "Pracownik"."Nr_adresu" IS 'Numer adresu'
/

-- Table Licencja

CREATE TABLE "Licencja"(
  "Nr_licencji" Integer NOT NULL,
  "Nazwa_licencji" Varchar2(64 ) NOT NULL,
  "Numer_licencji" Varchar2(64 ) NOT NULL,
  "Data_wydania_licencji" Date NOT NULL,
  "Nr_pracownika" Integer NOT NULL
)
/

-- Create indexes for table Licencja

CREATE INDEX "IX_Posiada_licencje" ON "Licencja" ("Nr_pracownika")
/

-- Add keys for table Licencja

ALTER TABLE "Licencja" ADD CONSTRAINT "Nr_licencji" PRIMARY KEY ("Nr_licencji")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Licencja"."Nr_licencji" IS 'Numer id licencji'
/
COMMENT ON COLUMN "Licencja"."Nazwa_licencji" IS 'Nazwa licencji'
/
COMMENT ON COLUMN "Licencja"."Numer_licencji" IS 'Numer licencji'
/
COMMENT ON COLUMN "Licencja"."Data_wydania_licencji" IS 'Data wydania licencji'
/
COMMENT ON COLUMN "Licencja"."Nr_pracownika" IS 'Numer pracownika'
/

-- Table Kort

CREATE TABLE "Kort"(
  "Nr_kortu" Integer NOT NULL,
  "Nawierzchnia" Varchar2(30 ) NOT NULL,
  "Zadaszenie" Char(1 ) NOT NULL,
  "Trybuny" Char(1 ),
  "Nr_obiektu" Integer NOT NULL
)
/

-- Create indexes for table Kort

CREATE INDEX "IX_Posiada_kort" ON "Kort" ("Nr_obiektu")
/

-- Add keys for table Kort

ALTER TABLE "Kort" ADD CONSTRAINT "Nr_kortu" PRIMARY KEY ("Nr_kortu")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Kort"."Nr_kortu" IS 'Numer kortu'
/
COMMENT ON COLUMN "Kort"."Nawierzchnia" IS 'Nawierzchnia'
/
COMMENT ON COLUMN "Kort"."Zadaszenie" IS 'Zadaszenie'
/
COMMENT ON COLUMN "Kort"."Trybuny" IS 'Trybuny'
/
COMMENT ON COLUMN "Kort"."Nr_obiektu" IS 'Numer obiektu'
/

-- Table Klient

CREATE TABLE "Klient"(
  "Nr_klienta" Integer NOT NULL,
  "Imie" Varchar2(64 ) NOT NULL,
  "Nazwisko" Varchar2(64 ) NOT NULL,
  "Data urodzenia" Date,
  "Nr_adresu" Integer
)
/

-- Create indexes for table Klient

CREATE INDEX "IX_Relationship11" ON "Klient" ("Nr_adresu")
/

-- Add keys for table Klient

ALTER TABLE "Klient" ADD CONSTRAINT "Nr_klienta" PRIMARY KEY ("Nr_klienta")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Klient"."Nr_klienta" IS 'Numer klienta'
/
COMMENT ON COLUMN "Klient"."Imie" IS 'Imie klienta'
/
COMMENT ON COLUMN "Klient"."Nazwisko" IS 'Nazwisko klienta'
/
COMMENT ON COLUMN "Klient"."Data urodzenia" IS 'Data urodzenia'
/
COMMENT ON COLUMN "Klient"."Nr_adresu" IS 'Numer adresu'
/

-- Table Obiekt

CREATE TABLE "Obiekt"(
  "Nr_obiektu" Integer NOT NULL,
  "Nazwa" Varchar2(64 ) NOT NULL,
  "Godzina_otwarcia" Date,
  "Godzina_zamkniecia" Date,
  "Konto_bankowe" Varchar2(40 ),
  "Nr_klubu" Integer NOT NULL,
  "Nr_adresu" Integer
)
/

-- Create indexes for table Obiekt

CREATE INDEX "IX_Posiada_obiekt" ON "Obiekt" ("Nr_klubu")
/

CREATE INDEX "IX_Relationship10" ON "Obiekt" ("Nr_adresu")
/

-- Add keys for table Obiekt

ALTER TABLE "Obiekt" ADD CONSTRAINT "Nr_obiektu" PRIMARY KEY ("Nr_obiektu")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Obiekt"."Nr_obiektu" IS 'Numer obiektu'
/
COMMENT ON COLUMN "Obiekt"."Nazwa" IS 'Nazwa obiektu'
/
COMMENT ON COLUMN "Obiekt"."Godzina_otwarcia" IS 'Godzina otwarcia'
/
COMMENT ON COLUMN "Obiekt"."Godzina_zamkniecia" IS 'Godzina zamkniecia'
/
COMMENT ON COLUMN "Obiekt"."Konto_bankowe" IS 'Konto bankowe obiektu'
/
COMMENT ON COLUMN "Obiekt"."Nr_klubu" IS 'Numer klubu'
/
COMMENT ON COLUMN "Obiekt"."Nr_adresu" IS 'Numer adresu'
/

-- Table Wypozyczalnia

CREATE TABLE "Wypozyczalnia"(
  "Nr_wypozyczalni" Integer NOT NULL,
  "Godzina_otwarcia" Date,
  "Godzina_zamkniecia" Date,
  "Telefon" Varchar2(20 ) NOT NULL,
  "Adres_email" Varchar2(30 ),
  "Nr_obiektu" Integer NOT NULL
)
/

-- Create indexes for table Wypozyczalnia

CREATE INDEX "IX_Posiada_wypozyczalnie" ON "Wypozyczalnia" ("Nr_obiektu")
/

-- Add keys for table Wypozyczalnia

ALTER TABLE "Wypozyczalnia" ADD CONSTRAINT "Nr_wypozyczalni" PRIMARY KEY ("Nr_wypozyczalni")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Wypozyczalnia"."Nr_wypozyczalni" IS 'Numer wypozyczalni'
/
COMMENT ON COLUMN "Wypozyczalnia"."Godzina_otwarcia" IS 'Godzina otwarcia'
/
COMMENT ON COLUMN "Wypozyczalnia"."Godzina_zamkniecia" IS 'Godzina zakonczenia'
/
COMMENT ON COLUMN "Wypozyczalnia"."Telefon" IS 'Telefon'
/
COMMENT ON COLUMN "Wypozyczalnia"."Adres_email" IS 'Adres-email'
/
COMMENT ON COLUMN "Wypozyczalnia"."Nr_obiektu" IS 'Numer obiektu'
/

-- Table Rakieta

CREATE TABLE "Rakieta"(
  "Nr_rakiety" Integer NOT NULL,
  "Typ_gracza" Varchar2(30 )
        CONSTRAINT "CheckConstraintA1" CHECK ("Typ_gracza" IN ('POCZATKUJACY', 'REKREACYJNY', 'KLUBOWY', 'SPORTOWY', 'WYCZYNOWY'))
        CHECK ("Typ_gracza" IN ('POCZATKUJACY', 'REKREACYJNY', 'KLUBOWY', 'SPORTOWY', 'WYCZYNOWY')),
  "Waga" Integer,
  "Balans" Float(126),
  "Poziom_mocy" Varchar2(30 )
        CONSTRAINT "CheckConstraintA2" CHECK ("Poziom_mocy" IN ('NISKI', 'SREDNI', 'WYSOKI'))
        CHECK ("Poziom_mocy" IN ('NISKI', 'SREDNI', 'WYSOKI')),
  "Wielkosc_glowki" Varchar2(30 )
        CONSTRAINT "CheckConstraintA3" CHECK ("Wielkosc_glowki" IN ('MID', 'MIDPLUS', 'OVERSIZE'))
        CHECK ("Wielkosc_glowki" IN ('MID', 'MIDPLUS', 'OVERSIZE')),
  "Nr_wypozyczalni" Integer NOT NULL,
  "Nr_producenta" Integer NOT NULL
)
/

-- Create indexes for table Rakieta

CREATE INDEX "IX_Ma_na_stanie_rakiete" ON "Rakieta" ("Nr_wypozyczalni")
/

CREATE INDEX "IX_Produkuje_rakiety" ON "Rakieta" ("Nr_producenta")
/

-- Add keys for table Rakieta

ALTER TABLE "Rakieta" ADD CONSTRAINT "Nr_rakiety" PRIMARY KEY ("Nr_rakiety")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Rakieta"."Nr_rakiety" IS 'Numer rakiety'
/
COMMENT ON COLUMN "Rakieta"."Typ_gracza" IS 'Typ gracza'
/
COMMENT ON COLUMN "Rakieta"."Waga" IS 'Waga rakiety'
/
COMMENT ON COLUMN "Rakieta"."Balans" IS 'Balans rakiety'
/
COMMENT ON COLUMN "Rakieta"."Poziom_mocy" IS 'Poziom mocy rakiety'
/
COMMENT ON COLUMN "Rakieta"."Wielkosc_glowki" IS 'Wielkosc glowki rakiety'
/
COMMENT ON COLUMN "Rakieta"."Nr_wypozyczalni" IS 'Numer wypozyczalni'
/
COMMENT ON COLUMN "Rakieta"."Nr_producenta" IS 'Numer producenta'
/

-- Table Pileczki

CREATE TABLE "Pileczki"(
  "Nr_pileczek" Integer NOT NULL,
  "Liczba" Integer,
  "Kolor" Varchar2(30 ),
  "Nr_wypozyczalni" Integer NOT NULL,
  "Nr_producenta" Integer NOT NULL
)
/

-- Create indexes for table Pileczki

CREATE INDEX "IX_Ma_na_stanie_pileczki" ON "Pileczki" ("Nr_wypozyczalni")
/

CREATE INDEX "IX_Produkuje_pileczki" ON "Pileczki" ("Nr_producenta")
/

-- Add keys for table Pileczki

ALTER TABLE "Pileczki" ADD CONSTRAINT "Nr_pileczek" PRIMARY KEY ("Nr_pileczek")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Pileczki"."Nr_pileczek" IS 'Numer pileczek'
/
COMMENT ON COLUMN "Pileczki"."Liczba" IS 'Liczba pileczek w zestawie'
/
COMMENT ON COLUMN "Pileczki"."Kolor" IS 'Kolor pileczek'
/
COMMENT ON COLUMN "Pileczki"."Nr_wypozyczalni" IS 'Numer wypozyczalni'
/
COMMENT ON COLUMN "Pileczki"."Nr_producenta" IS 'Numer producenta'
/

-- Table Karta_klubowa

CREATE TABLE "Karta_klubowa"(
  "Nr_karty_klubowej" Integer NOT NULL,
  "Data_wydania" Date NOT NULL,
  "Data_waznosci" Date NOT NULL,
  "Znizka" Float(126) NOT NULL,
  "Nr_klubu" Integer NOT NULL,
  "Nr_klienta" Integer NOT NULL
)
/

-- Add keys for table Karta_klubowa

ALTER TABLE "Karta_klubowa" ADD CONSTRAINT "Nr_karty_klubowej" PRIMARY KEY ("Nr_karty_klubowej","Nr_klienta","Nr_klubu")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Karta_klubowa"."Nr_karty_klubowej" IS 'Numer karty klubowej'
/
COMMENT ON COLUMN "Karta_klubowa"."Data_wydania" IS 'Data wydania karty'
/
COMMENT ON COLUMN "Karta_klubowa"."Data_waznosci" IS 'Data waznosci karty'
/
COMMENT ON COLUMN "Karta_klubowa"."Znizka" IS 'Znizka'
/
COMMENT ON COLUMN "Karta_klubowa"."Nr_klubu" IS 'Numer klubu'
/
COMMENT ON COLUMN "Karta_klubowa"."Nr_klienta" IS 'Numer klienta'
/

-- Table Producent

CREATE TABLE "Producent"(
  "Nr_producenta" Integer NOT NULL,
  "Nazwa_producenta" Varchar2(30 ) NOT NULL,
  "Numer_telefonu" Varchar2(15 ),
  "Adres_strony_internetowej" Varchar2(30 ),
  "Nr_adresu" Integer
)
/

-- Create indexes for table Producent

CREATE INDEX "IX_Relationship12" ON "Producent" ("Nr_adresu")
/

-- Add keys for table Producent

ALTER TABLE "Producent" ADD CONSTRAINT "Nr_producenta" PRIMARY KEY ("Nr_producenta")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Producent"."Nr_producenta" IS 'Numer producenta'
/
COMMENT ON COLUMN "Producent"."Nazwa_producenta" IS 'Nazwa producenta'
/
COMMENT ON COLUMN "Producent"."Numer_telefonu" IS 'Numer telefonu'
/
COMMENT ON COLUMN "Producent"."Adres_strony_internetowej" IS 'Adres strony internetowej'
/
COMMENT ON COLUMN "Producent"."Nr_adresu" IS 'Numer adresu'
/

-- Table Wynajecie

CREATE TABLE "Wynajecie"(
  "Nr_klienta" Integer NOT NULL,
  "Nr_kortu" Integer NOT NULL,
  "Data_rozpoczecia" Date,
  "Data_zakonczenia" Date
)
/

-- Table and Columns comments section

COMMENT ON COLUMN "Wynajecie"."Nr_klienta" IS 'Numer klienta'
/
COMMENT ON COLUMN "Wynajecie"."Nr_kortu" IS 'Numer kortu'
/
COMMENT ON COLUMN "Wynajecie"."Data_rozpoczecia" IS 'Data rozpoczecia'
/
COMMENT ON COLUMN "Wynajecie"."Data_zakonczenia" IS 'Data zakonczenia'
/

-- Table Zatrudnienie

CREATE TABLE "Zatrudnienie"(
  "Nr_zatrudnienia" Integer NOT NULL,
  "Nr_pracownika" Integer NOT NULL,
  "Nr_obiektu" Integer,
  "Nr_klubu" Integer,
  "Data_zatrudnienia" Date NOT NULL,
  "Stanowisko" Varchar2(30 ) NOT NULL,
  "Wynagrodzenie" Float
)
/

-- Create indexes for table Zatrudnienie

CREATE INDEX "IX_Relationship3" ON "Zatrudnienie" ("Nr_klubu")
/

CREATE INDEX "IX_Obiekt_zatrudnia" ON "Zatrudnienie" ("Nr_obiektu")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Zatrudnienie"."Nr_zatrudnienia" IS 'Numer zatrudnienia'
/
COMMENT ON COLUMN "Zatrudnienie"."Nr_pracownika" IS 'Numer pracownika'
/
COMMENT ON COLUMN "Zatrudnienie"."Nr_obiektu" IS 'Numer obiektu'
/
COMMENT ON COLUMN "Zatrudnienie"."Nr_klubu" IS 'Numer klubu'
/
COMMENT ON COLUMN "Zatrudnienie"."Data_zatrudnienia" IS 'Data zatrudnienia'
/
COMMENT ON COLUMN "Zatrudnienie"."Stanowisko" IS 'Stanowisko'
/
COMMENT ON COLUMN "Zatrudnienie"."Wynagrodzenie" IS 'Wynagrodzenie'
/

-- Table Wypozyczenie

CREATE TABLE "Wypozyczenie"(
  "Nr_klienta" Integer NOT NULL,
  "Nr_wypozyczalni" Integer NOT NULL,
  "Data_rozpoczecia" Date,
  "Data_zakonczenia" Date
)
/

-- Table and Columns comments section

COMMENT ON COLUMN "Wypozyczenie"."Nr_klienta" IS 'Numer klienta'
/
COMMENT ON COLUMN "Wypozyczenie"."Nr_wypozyczalni" IS 'Numer wypozyczalni'
/
COMMENT ON COLUMN "Wypozyczenie"."Data_rozpoczecia" IS 'Data rozpoczecia'
/
COMMENT ON COLUMN "Wypozyczenie"."Data_zakonczenia" IS 'Data zakonczenia'
/

-- Table Adres

CREATE TABLE "Adres"(
  "Nr_adresu" Integer NOT NULL,
  "Telefon" Varchar2(30 ),
  "Email" Varchar2(30 ),
  "Ulica" Varchar2(30 ),
  "Kod_pocztowy" Varchar2(30 ),
  "Miasto" Varchar2(30 )
)
/

-- Add keys for table Adres

ALTER TABLE "Adres" ADD CONSTRAINT "PK_Adres" PRIMARY KEY ("Nr_adresu")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Adres"."Nr_adresu" IS 'Numer adresu'
/
COMMENT ON COLUMN "Adres"."Telefon" IS 'Telefon'
/
COMMENT ON COLUMN "Adres"."Email" IS 'E-mail'
/
COMMENT ON COLUMN "Adres"."Ulica" IS 'Ulica'
/
COMMENT ON COLUMN "Adres"."Kod_pocztowy" IS 'Kod pocztowy'
/
COMMENT ON COLUMN "Adres"."Miasto" IS 'Miasto'
/


-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE "Obiekt" ADD CONSTRAINT "Posiada_obiekt" FOREIGN KEY ("Nr_klubu") REFERENCES "Klub" ("Nr_klubu")
/



ALTER TABLE "Kort" ADD CONSTRAINT "Posiada_kort" FOREIGN KEY ("Nr_obiektu") REFERENCES "Obiekt" ("Nr_obiektu")
/



ALTER TABLE "Wypozyczalnia" ADD CONSTRAINT "Posiada_wypozyczalnie" FOREIGN KEY ("Nr_obiektu") REFERENCES "Obiekt" ("Nr_obiektu")
/



ALTER TABLE "Rakieta" ADD CONSTRAINT "Posiada_rakiete" FOREIGN KEY ("Nr_wypozyczalni") REFERENCES "Wypozyczalnia" ("Nr_wypozyczalni")
/



ALTER TABLE "Pileczki" ADD CONSTRAINT "Posiada_pileczki" FOREIGN KEY ("Nr_wypozyczalni") REFERENCES "Wypozyczalnia" ("Nr_wypozyczalni")
/



ALTER TABLE "Licencja" ADD CONSTRAINT "Posiada_licencje" FOREIGN KEY ("Nr_pracownika") REFERENCES "Pracownik" ("Nr_pracownika")
/



ALTER TABLE "Karta_klubowa" ADD CONSTRAINT "Wydaje_karte" FOREIGN KEY ("Nr_klubu") REFERENCES "Klub" ("Nr_klubu")
/



ALTER TABLE "Karta_klubowa" ADD CONSTRAINT "Posiada_karte" FOREIGN KEY ("Nr_klienta") REFERENCES "Klient" ("Nr_klienta")
/



ALTER TABLE "Rakieta" ADD CONSTRAINT "Produkuje_rakiety" FOREIGN KEY ("Nr_producenta") REFERENCES "Producent" ("Nr_producenta")
/



ALTER TABLE "Pileczki" ADD CONSTRAINT "Produkuje_pileczki" FOREIGN KEY ("Nr_producenta") REFERENCES "Producent" ("Nr_producenta")
/



ALTER TABLE "Zatrudnienie" ADD CONSTRAINT "Klub_zatrudnia" FOREIGN KEY ("Nr_klubu") REFERENCES "Klub" ("Nr_klubu")
/



ALTER TABLE "Klub" ADD CONSTRAINT "Adres_klubu" FOREIGN KEY ("Nr_adresu") REFERENCES "Adres" ("Nr_adresu")
/



ALTER TABLE "Pracownik" ADD CONSTRAINT "Adres_pracownika" FOREIGN KEY ("Nr_adresu") REFERENCES "Adres" ("Nr_adresu")
/



ALTER TABLE "Obiekt" ADD CONSTRAINT "Adres_obiektu" FOREIGN KEY ("Nr_adresu") REFERENCES "Adres" ("Nr_adresu")
/



ALTER TABLE "Klient" ADD CONSTRAINT "Adres_klienta" FOREIGN KEY ("Nr_adresu") REFERENCES "Adres" ("Nr_adresu")
/



ALTER TABLE "Producent" ADD CONSTRAINT "Adres_producenta" FOREIGN KEY ("Nr_adresu") REFERENCES "Adres" ("Nr_adresu")
/





