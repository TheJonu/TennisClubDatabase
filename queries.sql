--Chcemy sprawdzić jakie stanowiska posiadaja pracownicy danego obiektu / klubu
SELECT Imie, Nazwisko, Stanowisko FROM Pracownicy NATURAL JOIN Zatrudnienia WHERE Nr_obiektu=0 OR Nr_klubu=0;

--Chcemy zobaczyć wszystkie karty wydane przez dany klub
SELECT Imie, Nazwisko, Znizka FROM Klienci NATURAL JOIN Karty_klubowe WHERE Nr_klubu=0;

--Chcemy spojrzeć na wynajęcia kortów na danym obiekcie
SELECT Data_rozpoczecia, Data_zakonczenia FROM Wynajecia NATURAL JOIN Korty WHERE Nr_obiektu=0;

--Sprawdzenie rakiet do wynajęcia w danym obiekcie
SELECT Nr_rakiety, Typ_gracza, Waga, Balans, Poziom_mocy, Wielkosc_glowki FROM Rakiety NATURAL JOIN Wypozyczalnie WHERE Nr_obiektu=0;