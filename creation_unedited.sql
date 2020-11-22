/*
Created: 11.11.2020
Modified: 22.11.2020
Project: Klub Tenisowy
Model: Model logiczny
Company: EiTI PW
Author: KK, JS
Version: 2.0
Database: Oracle 19c
*/


-- Create tables section -------------------------------------------------

-- Table Kluby

CREATE TABLE "Kluby"(
  "Nr_klubu" Integer NOT NULL,
  "Nazwa" Varchar2(30 ) NOT NULL,
  "Data_zalozenia" Date NOT NULL,
  "Wlasciciel" Varchar2(60 ) NOT NULL,
  "Konto_bankowe" Varchar2(40 ) NOT NULL,
  "Nr_adresu" Integer
)
/

-- Create indexes for table Kluby

CREATE INDEX "IX_Relationship8" ON "Kluby" ("Nr_adresu")
/

-- Add keys for table Kluby

ALTER TABLE "Kluby" ADD CONSTRAINT "Nr_klubu" PRIMARY KEY ("Nr_klubu")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Kluby"."Nr_klubu" IS 'Numer klubu'
/
COMMENT ON COLUMN "Kluby"."Nazwa" IS 'Nazwa klubu'
/
COMMENT ON COLUMN "Kluby"."Data_zalozenia" IS 'Data zalozenia klubu'
/
COMMENT ON COLUMN "Kluby"."Wlasciciel" IS 'Wlasciciel klubu'
/
COMMENT ON COLUMN "Kluby"."Konto_bankowe" IS 'Konto bankowe'
/
COMMENT ON COLUMN "Kluby"."Nr_adresu" IS 'Numer adresu klubu'
/

-- Table Pracownicy

CREATE TABLE "Pracownicy"(
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

-- Create indexes for table Pracownicy

CREATE INDEX "IX_Relationship9" ON "Pracownicy" ("Nr_adresu")
/

-- Add keys for table Pracownicy

ALTER TABLE "Pracownicy" ADD CONSTRAINT "Nr_pracownika" PRIMARY KEY ("Nr_pracownika")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Pracownicy"."Nr_pracownika" IS 'Numer pracownika'
/
COMMENT ON COLUMN "Pracownicy"."Imie" IS 'Imie pracownika'
/
COMMENT ON COLUMN "Pracownicy"."Nazwisko" IS 'Nazwisko pracownika'
/
COMMENT ON COLUMN "Pracownicy"."Data_urodzenia" IS 'Data urodzenia pracownika'
/
COMMENT ON COLUMN "Pracownicy"."PESEL" IS 'PESEL pracownika'
/
COMMENT ON COLUMN "Pracownicy"."Plec" IS 'Plec pracownika'
/
COMMENT ON COLUMN "Pracownicy"."Nr_adresu" IS 'Numer adresu'
/

-- Table Licencje

CREATE TABLE "Licencje"(
  "Nr_licencji" Integer NOT NULL,
  "Nr_pracownika" Integer NOT NULL,
  "Nazwa_licencji" Varchar2(64 ) NOT NULL,
  "Numer_licencji" Varchar2(64 ) NOT NULL,
  "Data_wydania_licencji" Date NOT NULL
)
/

-- Add keys for table Licencje

ALTER TABLE "Licencje" ADD CONSTRAINT "Nr_licencji" PRIMARY KEY ("Nr_licencji","Nr_pracownika")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Licencje"."Nr_licencji" IS 'Numer id licencji'
/
COMMENT ON COLUMN "Licencje"."Nr_pracownika" IS 'Numer pracownika'
/
COMMENT ON COLUMN "Licencje"."Nazwa_licencji" IS 'Nazwa licencji'
/
COMMENT ON COLUMN "Licencje"."Numer_licencji" IS 'Numer licencji'
/
COMMENT ON COLUMN "Licencje"."Data_wydania_licencji" IS 'Data wydania licencji'
/

-- Table Korty

CREATE TABLE "Korty"(
  "Nr_kortu" Integer NOT NULL,
  "Nawierzchnia" Varchar2(30 ) NOT NULL,
  "Zadaszenie" Char(1 ) NOT NULL,
  "Trybuny" Char(1 ),
  "Nr_obiektu" Integer NOT NULL
)
/

-- Create indexes for table Korty

CREATE INDEX "IX_Posiada_kort" ON "Korty" ("Nr_obiektu")
/

-- Add keys for table Korty

ALTER TABLE "Korty" ADD CONSTRAINT "Nr_kortu" PRIMARY KEY ("Nr_kortu")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Korty"."Nr_kortu" IS 'Numer kortu'
/
COMMENT ON COLUMN "Korty"."Nawierzchnia" IS 'Nawierzchnia'
/
COMMENT ON COLUMN "Korty"."Zadaszenie" IS 'Zadaszenie'
/
COMMENT ON COLUMN "Korty"."Trybuny" IS 'Trybuny'
/
COMMENT ON COLUMN "Korty"."Nr_obiektu" IS 'Numer obiektu'
/

-- Table Klienci

CREATE TABLE "Klienci"(
  "Nr_klienta" Integer NOT NULL,
  "Imie" Varchar2(64 ) NOT NULL,
  "Nazwisko" Varchar2(64 ) NOT NULL,
  "Data urodzenia" Date,
  "Nr_adresu" Integer
)
/

-- Create indexes for table Klienci

CREATE INDEX "IX_Relationship11" ON "Klienci" ("Nr_adresu")
/

-- Add keys for table Klienci

ALTER TABLE "Klienci" ADD CONSTRAINT "Nr_klienta" PRIMARY KEY ("Nr_klienta")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Klienci"."Nr_klienta" IS 'Numer klienta'
/
COMMENT ON COLUMN "Klienci"."Imie" IS 'Imie klienta'
/
COMMENT ON COLUMN "Klienci"."Nazwisko" IS 'Nazwisko klienta'
/
COMMENT ON COLUMN "Klienci"."Data urodzenia" IS 'Data urodzenia'
/
COMMENT ON COLUMN "Klienci"."Nr_adresu" IS 'Numer adresu'
/

-- Table Obiekty

CREATE TABLE "Obiekty"(
  "Nr_obiektu" Integer NOT NULL,
  "Nazwa" Varchar2(64 ) NOT NULL,
  "Godziny_otwarcia" Varchar2(50 ),
  "Konto_bankowe" Varchar2(40 ),
  "Nr_klubu" Integer NOT NULL,
  "Nr_adresu" Integer
)
/

-- Create indexes for table Obiekty

CREATE INDEX "IX_Posiada_obiekt" ON "Obiekty" ("Nr_klubu")
/

CREATE INDEX "IX_Relationship10" ON "Obiekty" ("Nr_adresu")
/

-- Add keys for table Obiekty

ALTER TABLE "Obiekty" ADD CONSTRAINT "Nr_obiektu" PRIMARY KEY ("Nr_obiektu")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Obiekty"."Nr_obiektu" IS 'Numer obiektu'
/
COMMENT ON COLUMN "Obiekty"."Nazwa" IS 'Nazwa obiektu'
/
COMMENT ON COLUMN "Obiekty"."Godziny_otwarcia" IS 'Godzina otwarcia'
/
COMMENT ON COLUMN "Obiekty"."Konto_bankowe" IS 'Konto bankowe obiektu'
/
COMMENT ON COLUMN "Obiekty"."Nr_klubu" IS 'Numer klubu'
/
COMMENT ON COLUMN "Obiekty"."Nr_adresu" IS 'Numer adresu'
/

-- Table Wypozyczalnie

CREATE TABLE "Wypozyczalnie"(
  "Nr_wypozyczalni" Integer NOT NULL,
  "Godziny_otwarcia" Varchar2(50 ),
  "Telefon" Varchar2(20 ) NOT NULL,
  "Adres_email" Varchar2(30 ),
  "Nr_obiektu" Integer NOT NULL
)
/

-- Create indexes for table Wypozyczalnie

CREATE INDEX "IX_Posiada_wypozyczalnie" ON "Wypozyczalnie" ("Nr_obiektu")
/

-- Add keys for table Wypozyczalnie

ALTER TABLE "Wypozyczalnie" ADD CONSTRAINT "Nr_wypozyczalni" PRIMARY KEY ("Nr_wypozyczalni")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Wypozyczalnie"."Nr_wypozyczalni" IS 'Numer wypozyczalni'
/
COMMENT ON COLUMN "Wypozyczalnie"."Godziny_otwarcia" IS 'Godzina otwarcia'
/
COMMENT ON COLUMN "Wypozyczalnie"."Telefon" IS 'Telefon'
/
COMMENT ON COLUMN "Wypozyczalnie"."Adres_email" IS 'Adres-email'
/
COMMENT ON COLUMN "Wypozyczalnie"."Nr_obiektu" IS 'Numer obiektu'
/

-- Table Rakiety

CREATE TABLE "Rakiety"(
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

-- Create indexes for table Rakiety

CREATE INDEX "IX_Ma_na_stanie_rakiete" ON "Rakiety" ("Nr_wypozyczalni")
/

CREATE INDEX "IX_Produkuje_rakiety" ON "Rakiety" ("Nr_producenta")
/

-- Add keys for table Rakiety

ALTER TABLE "Rakiety" ADD CONSTRAINT "Nr_rakiety" PRIMARY KEY ("Nr_rakiety")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Rakiety"."Nr_rakiety" IS 'Numer rakiety'
/
COMMENT ON COLUMN "Rakiety"."Typ_gracza" IS 'Typ gracza'
/
COMMENT ON COLUMN "Rakiety"."Waga" IS 'Waga rakiety'
/
COMMENT ON COLUMN "Rakiety"."Balans" IS 'Balans rakiety'
/
COMMENT ON COLUMN "Rakiety"."Poziom_mocy" IS 'Poziom mocy rakiety'
/
COMMENT ON COLUMN "Rakiety"."Wielkosc_glowki" IS 'Wielkosc glowki rakiety'
/
COMMENT ON COLUMN "Rakiety"."Nr_wypozyczalni" IS 'Numer wypozyczalni'
/
COMMENT ON COLUMN "Rakiety"."Nr_producenta" IS 'Numer producenta'
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

-- Table Karty_klubowe

CREATE TABLE "Karty_klubowe"(
  "Nr_klubu" Integer NOT NULL,
  "Nr_klienta" Integer NOT NULL,
  "Data_wydania" Date NOT NULL,
  "Data_waznosci" Date NOT NULL,
  "Znizka" Float(126) NOT NULL
)
/

-- Add keys for table Karty_klubowe

ALTER TABLE "Karty_klubowe" ADD CONSTRAINT "Nr_karty_klubowej" PRIMARY KEY ("Nr_klienta","Nr_klubu")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Karty_klubowe"."Nr_klubu" IS 'Numer klubu'
/
COMMENT ON COLUMN "Karty_klubowe"."Nr_klienta" IS 'Numer klienta'
/
COMMENT ON COLUMN "Karty_klubowe"."Data_wydania" IS 'Data wydania karty'
/
COMMENT ON COLUMN "Karty_klubowe"."Data_waznosci" IS 'Data waznosci karty'
/
COMMENT ON COLUMN "Karty_klubowe"."Znizka" IS 'Znizka'
/

-- Table Producenci

CREATE TABLE "Producenci"(
  "Nr_producenta" Integer NOT NULL,
  "Nazwa_producenta" Varchar2(30 ) NOT NULL,
  "Adres_strony_internetowej" Varchar2(30 ),
  "Nr_adresu" Integer
)
/

-- Create indexes for table Producenci

CREATE INDEX "IX_Relationship12" ON "Producenci" ("Nr_adresu")
/

-- Add keys for table Producenci

ALTER TABLE "Producenci" ADD CONSTRAINT "Nr_producenta" PRIMARY KEY ("Nr_producenta")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Producenci"."Nr_producenta" IS 'Numer producenta'
/
COMMENT ON COLUMN "Producenci"."Nazwa_producenta" IS 'Nazwa producenta'
/
COMMENT ON COLUMN "Producenci"."Adres_strony_internetowej" IS 'Adres strony internetowej'
/
COMMENT ON COLUMN "Producenci"."Nr_adresu" IS 'Numer adresu'
/

-- Table Wynajecia

CREATE TABLE "Wynajecia"(
  "Nr_wynajecia" Integer NOT NULL,
  "Data_rozpoczecia" Date,
  "Data_zakonczenia" Date,
  "Nr_klienta" Integer NOT NULL,
  "Nr_kortu" Integer NOT NULL
)
/

-- Create indexes for table Wynajecia

CREATE INDEX "IX_Wynajmuje" ON "Wynajecia" ("Nr_klienta")
/

CREATE INDEX "IX_Jest_wynajmowany" ON "Wynajecia" ("Nr_kortu")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Wynajecia"."Data_rozpoczecia" IS 'Data rozpoczecia'
/
COMMENT ON COLUMN "Wynajecia"."Data_zakonczenia" IS 'Data zakonczenia'
/
COMMENT ON COLUMN "Wynajecia"."Nr_klienta" IS 'Numer klienta'
/
COMMENT ON COLUMN "Wynajecia"."Nr_kortu" IS 'Numer kortu'
/

-- Table Zatrudnienia

CREATE TABLE "Zatrudnienia"(
  "Nr_zatrudnienia" Integer NOT NULL,
  "Nr_pracownika" Integer NOT NULL,
  "Data_zatrudnienia" Date NOT NULL,
  "Stanowisko" Varchar2(30 ) NOT NULL,
  "Wynagrodzenie" Float,
  "Nr_obiektu" Integer,
  "Nr_klubu" Integer
)
/

-- Create indexes for table Zatrudnienia

CREATE INDEX "IX_Relationship15" ON "Zatrudnienia" ("Nr_klubu")
/

CREATE INDEX "IX_Obiekt_zatrudnia" ON "Zatrudnienia" ("Nr_obiektu")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Zatrudnienia"."Nr_zatrudnienia" IS 'Numer zatrudnienia'
/
COMMENT ON COLUMN "Zatrudnienia"."Nr_pracownika" IS 'Numer pracownika'
/
COMMENT ON COLUMN "Zatrudnienia"."Data_zatrudnienia" IS 'Data zatrudnienia'
/
COMMENT ON COLUMN "Zatrudnienia"."Stanowisko" IS 'Stanowisko'
/
COMMENT ON COLUMN "Zatrudnienia"."Wynagrodzenie" IS 'Wynagrodzenie'
/
COMMENT ON COLUMN "Zatrudnienia"."Nr_obiektu" IS 'Numer obiektu'
/
COMMENT ON COLUMN "Zatrudnienia"."Nr_klubu" IS 'Numer klubu'
/

-- Table Wypozyczenia_rakiet

CREATE TABLE "Wypozyczenia_rakiet"(
  "Nr_wypozyczenia" Integer NOT NULL,
  "Data_rozpoczecia" Date,
  "Data_zakonczenia" Date,
  "Nr_klienta" Integer NOT NULL,
  "Nr_rakiety" Integer NOT NULL
)
/

-- Create indexes for table Wypozyczenia_rakiet

CREATE INDEX "IX_Wypozycza" ON "Wypozyczenia_rakiet" ("Nr_klienta")
/

CREATE INDEX "IX_Relationship2" ON "Wypozyczenia_rakiet" ("Nr_rakiety")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Wypozyczenia_rakiet"."Data_rozpoczecia" IS 'Data rozpoczecia'
/
COMMENT ON COLUMN "Wypozyczenia_rakiet"."Data_zakonczenia" IS 'Data zakonczenia'
/
COMMENT ON COLUMN "Wypozyczenia_rakiet"."Nr_klienta" IS 'Numer klienta'
/

-- Table Adresy

CREATE TABLE "Adresy"(
  "Nr_adresu" Integer NOT NULL,
  "Telefon" Varchar2(30 ),
  "Email" Varchar2(30 ),
  "Ulica" Varchar2(50 ),
  "Nr_poczty" Integer
)
/

-- Create indexes for table Adresy

CREATE INDEX "IX_Relationship5" ON "Adresy" ("Nr_poczty")
/

-- Add keys for table Adresy

ALTER TABLE "Adresy" ADD CONSTRAINT "PK_Adresy" PRIMARY KEY ("Nr_adresu")
/

-- Table and Columns comments section

COMMENT ON COLUMN "Adresy"."Nr_adresu" IS 'Numer adresu'
/
COMMENT ON COLUMN "Adresy"."Telefon" IS 'Telefon'
/
COMMENT ON COLUMN "Adresy"."Email" IS 'E-mail'
/
COMMENT ON COLUMN "Adresy"."Ulica" IS 'Ulica'
/

-- Table Wypozyczenia_pileczek

CREATE TABLE "Wypozyczenia_pileczek"(
  "Nr_wypozyczenia" Integer NOT NULL,
  "Data_rozpoczecia" Date,
  "Data_zakonczenia" Date,
  "Nr_klienta" Integer NOT NULL,
  "Nr_pileczek" Integer NOT NULL
)
/

-- Create indexes for table Wypozyczenia_pileczek

CREATE INDEX "IX_Relationship3" ON "Wypozyczenia_pileczek" ("Nr_klienta")
/

CREATE INDEX "IX_Relationship4" ON "Wypozyczenia_pileczek" ("Nr_pileczek")
/

-- Add keys for table Wypozyczenia_pileczek

ALTER TABLE "Wypozyczenia_pileczek" ADD CONSTRAINT "PK_Wypozyczenia_pileczek" PRIMARY KEY ("Nr_wypozyczenia")
/

-- Table Poczty

CREATE TABLE "Poczty"(
  "Nr_poczty" Integer NOT NULL,
  "Kod_pocztowy" Varchar2(30 ) NOT NULL,
  "Miejscowosc" Varchar2(30 ) NOT NULL
)
/

-- Add keys for table Poczty

ALTER TABLE "Poczty" ADD CONSTRAINT "PK_Poczty" PRIMARY KEY ("Nr_poczty")
/


-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE "Obiekty" ADD CONSTRAINT "Posiada_obiekt" FOREIGN KEY ("Nr_klubu") REFERENCES "Kluby" ("Nr_klubu")
/



ALTER TABLE "Korty" ADD CONSTRAINT "Posiada_kort" FOREIGN KEY ("Nr_obiektu") REFERENCES "Obiekty" ("Nr_obiektu")
/



ALTER TABLE "Wypozyczalnie" ADD CONSTRAINT "Posiada_wypozyczalnie" FOREIGN KEY ("Nr_obiektu") REFERENCES "Obiekty" ("Nr_obiektu")
/



ALTER TABLE "Rakiety" ADD CONSTRAINT "Posiada_rakiete" FOREIGN KEY ("Nr_wypozyczalni") REFERENCES "Wypozyczalnie" ("Nr_wypozyczalni")
/



ALTER TABLE "Pileczki" ADD CONSTRAINT "Posiada_pileczki" FOREIGN KEY ("Nr_wypozyczalni") REFERENCES "Wypozyczalnie" ("Nr_wypozyczalni")
/



ALTER TABLE "Licencje" ADD CONSTRAINT "Posiada_licencje" FOREIGN KEY ("Nr_pracownika") REFERENCES "Pracownicy" ("Nr_pracownika")
/



ALTER TABLE "Karty_klubowe" ADD CONSTRAINT "Wydaje_karte" FOREIGN KEY ("Nr_klubu") REFERENCES "Kluby" ("Nr_klubu")
/



ALTER TABLE "Karty_klubowe" ADD CONSTRAINT "Posiada_karte" FOREIGN KEY ("Nr_klienta") REFERENCES "Klienci" ("Nr_klienta")
/



ALTER TABLE "Rakiety" ADD CONSTRAINT "Produkuje_rakiety" FOREIGN KEY ("Nr_producenta") REFERENCES "Producenci" ("Nr_producenta")
/



ALTER TABLE "Pileczki" ADD CONSTRAINT "Produkuje_pileczki" FOREIGN KEY ("Nr_producenta") REFERENCES "Producenci" ("Nr_producenta")
/



ALTER TABLE "Zatrudnienia" ADD CONSTRAINT "Klub_zatrudnia" FOREIGN KEY ("Nr_klubu") REFERENCES "Kluby" ("Nr_klubu")
/



ALTER TABLE "Kluby" ADD CONSTRAINT "Adres_klubu" FOREIGN KEY ("Nr_adresu") REFERENCES "Adresy" ("Nr_adresu")
/



ALTER TABLE "Pracownicy" ADD CONSTRAINT "Adres_pracownika" FOREIGN KEY ("Nr_adresu") REFERENCES "Adresy" ("Nr_adresu")
/



ALTER TABLE "Obiekty" ADD CONSTRAINT "Adres_obiektu" FOREIGN KEY ("Nr_adresu") REFERENCES "Adresy" ("Nr_adresu")
/



ALTER TABLE "Klienci" ADD CONSTRAINT "Adres_klienta" FOREIGN KEY ("Nr_adresu") REFERENCES "Adresy" ("Nr_adresu")
/



ALTER TABLE "Producenci" ADD CONSTRAINT "Adres_producenta" FOREIGN KEY ("Nr_adresu") REFERENCES "Adresy" ("Nr_adresu")
/



ALTER TABLE "Wypozyczenia_rakiet" ADD CONSTRAINT "Rakieta_jest_wypozyczana" FOREIGN KEY ("Nr_rakiety") REFERENCES "Rakiety" ("Nr_rakiety")
/



ALTER TABLE "Wypozyczenia_pileczek" ADD CONSTRAINT "Wypozycza_pileczki" FOREIGN KEY ("Nr_klienta") REFERENCES "Klienci" ("Nr_klienta")
/



ALTER TABLE "Wypozyczenia_pileczek" ADD CONSTRAINT "Pileczki_sa_wypozyczane" FOREIGN KEY ("Nr_pileczek") REFERENCES "Pileczki" ("Nr_pileczek")
/



ALTER TABLE "Adresy" ADD CONSTRAINT "Ma_poczte" FOREIGN KEY ("Nr_poczty") REFERENCES "Poczty" ("Nr_poczty")
/





