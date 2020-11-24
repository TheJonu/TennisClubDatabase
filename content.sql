--Adresy do klubow
INSERT INTO Adresy VALUES (0, '689677315', NULL, 'Mylna 39', '60-857', 'Poznań');
INSERT INTO Adresy VALUES (1, '532132555', NULL, 'Grzybowska 124', '41-808', 'Zabrze');
INSERT INTO Adresy VALUES (2, '676520095', NULL, 'Majora Hubala 86', '15-174', 'Białystok');
--Adresy do producentow
INSERT INTO Adresy VALUES (3, '536911358', NULL, 'Bysewska 104', '80-298', 'Gdańsk');
INSERT INTO Adresy VALUES (4, '884977339', NULL, 'Małopolska 140', '60-619', 'Poznań');
INSERT INTO Adresy VALUES (5, '176847619', NULL, 'Ametystowa 92', '91-604', 'Łódź');
INSERT INTO Adresy VALUES (6, '512547579', NULL, 'Zakopiańska 88', '30-450', 'Kraków');
INSERT INTO Adresy VALUES (7, '457057430', NULL, 'Pawlikowskiej Jasnorzewskiej Marii 19', '71-148', 'Szczecin');
--Adresy do klientow (do wpisania emaile od imion
INSERT INTO Adresy VALUES (8, '161025109', '', 'Lenartowicza Teofila 7', '31-138', 'Kraków');
INSERT INTO Adresy VALUES (9, '252752956', '', 'Gliwicka 19', '41-902', 'Bytom');
INSERT INTO Adresy VALUES (10, '262440566', '', 'Miarki Karola 31', '44-330', 'Jastrzębie-Zdrój');
INSERT INTO Adresy VALUES (11, '951057219', '', 'Makuszyńskiego Kornela 100', '71-155', 'Szczecin');
INSERT INTO Adresy VALUES (12, '556159236', '', 'Generała Hallera Józefa 121', '41-214', 'Sosnowiec');
INSERT INTO Adresy VALUES (13, '373693248', '', 'Domeyki Ignacego 38', '40-749', 'Katowice');
INSERT INTO Adresy VALUES (14, '186210922', '', 'Rybaki 12', '31-067', 'Kraków');
INSERT INTO Adresy VALUES (15, '443437989', '', 'Lea Juliusza 26', '30-133', 'Kraków');
INSERT INTO Adresy VALUES (16, '402101102', '', 'Borówkowa 94', '71-034', 'Szczecin');
INSERT INTO Adresy VALUES (17, '799997965', '', 'Łódzka 116', '60-468', 'Poznań');
--Adresy do obiektow dodatkowe
INSERT INTO Adresy VALUES (18, '737761713', NULL, 'Wspólna 13', '61-481', 'Poznań');
INSERT INTO Adresy VALUES (19, '847402622', NULL, 'Składowa 48', '15-399', 'Białystok');


--Kluby
INSERT INTO Kluby VALUES (0, 'Jukan', '2010-06-20', 'Antoni Juk', '5478 2358 6370 4213', 0);
INSERT INTO Kluby VALUES (1, 'Pukam', '2010-02-19', 'Bartosz Puk', '4556 9683 3486 1604', 1);
INSERT INTO Kluby VALUES (2, 'Match Point szkoła tenisa', '2002-04-01', 'Ruta Szczepańska', '4539 4213 5833 6923', 2);

--Obiekty
INSERT INTO Obiekty VALUES (0, 'Jukan - Mylna 39', NULL, NULL, 0, 0);
INSERT INTO Obiekty VALUES (1, 'Jukan Wspólna', NULL, NULL, 0, 18);
INSERT INTO Obiekty VALUES (2, 'Pukam Grzybowska', NULL, NULL, 1, 1);
INSERT INTO Obiekty VALUES (3, 'Match Point Białystok', NULL, NULL, 2, 2);
INSERT INTO Obiekty VALUES (4, 'MP Szkółka', NULL, NULL, 2, 19);

--Korty
INSERT INTO Korty VALUES (0, 'maczka ceglana', 'N', NULL, 0);
INSERT INTO Korty VALUES (1, 'maczka ceglana', 'N', NULL, 0);
INSERT INTO Korty VALUES (2, 'sztuczna trawa', 'T', NULL, 1);
INSERT INTO Korty VALUES (3, 'sztuczna trawa', 'N', 'T', 2);
INSERT INTO Korty VALUES (4, 'maczka ceglana', 'T', 'N', 3);
INSERT INTO Korty VALUES (5, 'maczka ceglana', 'N', 'N', 4);

--Wypozyczalnie
INSERT INTO Wypozyczalnie VALUES (0, NULL, '666184634', NULL, 0);
INSERT INTO Wypozyczalnie VALUES (1, 'pn-pt 10:00-16:00', '173987537', 'wypozyczalnia@pukam.com', 2);

--Producenci
INSERT INTO Producenci VALUES (0, 'Babolat', 'babolat-tenis.pl', 3);
INSERT INTO Producenci VALUES (1, 'Head', 'head.com', 4);
INSERT INTO Producenci VALUES (2, 'Wilson', 'wilsontenis.pl', 5);
INSERT INTO Producenci VALUES (3, 'Dunlop', 'dunlopsport.pl', 6);
INSERT INTO Producenci VALUES (4, 'Tecnifibre', 'tecnifibre.com', 7);

--Rakiety
INSERT INTO Rakiety VALUES (0, NULL, NULL, NULL, NULL, NULL, 0, 1);
INSERT INTO Rakiety VALUES (1, NULL, NULL, NULL, NULL, NULL, 0, 4);
INSERT INTO Rakiety VALUES (2, NULL, NULL, NULL, NULL, NULL, 1, 0);
INSERT INTO Rakiety VALUES (3, NULL, NULL, NULL, NULL, NULL, 1, 2);

--Pileczki
INSERT INTO Pileczki VALUES (0, NULL, NULL, 0, 1);
INSERT INTO Pileczki VALUES (1, NULL, NULL, 0, 1);
INSERT INTO Pileczki VALUES (2, NULL, NULL, 1, 2);

--Klienci
INSERT INTO Klienci VALUES (0, 'Ruta', 'Szczepańska', '1947-05-19', 4);
INSERT INTO Klienci VALUES (1, 'Narcyz', 'Adamczyk', '1970-09-30', 3);
INSERT INTO Klienci VALUES (2, 'Mikołaj', 'Nowakowski', '1939-12-03', 2);

--Karty klubowe
INSERT INTO Karty_klubowe VALUES (0, 0, '2020-03-21', '2023-03-21', 5.0);
INSERT INTO Karty_klubowe VALUES (0, 1, '2019-09-12', '2022-09-12', 5.0);
INSERT INTO Karty_klubowe VALUES (1, 1, '2016-11-13', '2026-11-13', 10.0);
INSERT INTO Karty_klubowe VALUES (2, 2, '2018-12-20', '2020-12-20', 7.5);

--Pracownicy
INSERT INTO Pracownicy VALUES (0, 'Świętosław', 'Wieczorek', '1985-05-01', '85050172453', 'M', 1);
INSERT INTO Pracownicy VALUES (1, 'Gertruda', 'Król', '1970-09-14', '70091470307', 'K', 6);
INSERT INTO Pracownicy VALUES (2, 'Konstanty', 'Podarek', '1989-12-04', '89731836472', 'M', 9);
INSERT INTO Pracownicy VALUES (3, 'Albina', 'Potokowicz', '1992-01-07', '92473518637', 'K', 16);

--Licencje
INSERT INTO Licencje VALUES (0, 0, 'Licencja Klubowa Jukan', '13/2005/Jn', '2005-10-03');
INSERT INTO Licencje VALUES (1, 0, 'Licencja UKS', 'PZT/LK/224/2010/DO', '2010-03-15');
INSERT INTO Licencje VALUES (2, 1, 'Licencja PZT', 'PZT/LK/13/2016/DO', '2016-04-19');

-- Zatrudnienia
INSERT INTO Zatrudnienia (Nr_zatrudnienia, Nr_pracownika, Data_zatrudnienia, Stanowisko, Nr_obiektu) VALUES (0, 0, '2016-05-22', 'Instruktor', 0);
INSERT INTO Zatrudnienia (Nr_zatrudnienia, Nr_pracownika, Data_zatrudnienia, Stanowisko, Nr_obiektu) VALUES (1, 1, '2018-02-10', 'Trener', 2);
INSERT INTO Zatrudnienia (Nr_zatrudnienia, Nr_pracownika, Data_zatrudnienia, Stanowisko, Nr_obiektu) VALUES (2, 2, '2019-08-03', 'Trener', 4);
INSERT INTO Zatrudnienia (Nr_zatrudnienia, Nr_pracownika, Data_zatrudnienia, Stanowisko, Nr_klubu) VALUES (3, 3, '2020-03-12', 'Administrator', 0); 