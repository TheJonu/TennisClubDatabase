INSERT INTO "Kluby" VALUES (0, 'Jukan', '2010-06-20', 'Antoni Juk', '0000', NULL);
INSERT INTO "Kluby" VALUES (1, 'Pukam', '2010-02-19', 'Bartosz Puk', '0001', NULL);

TRUNCATE TABLE "Kluby";

SELECT * FROM "Kluby";

INSERT INTO "Adresy" VALUES (0, '689677315' NULL, 'Mylna 39', '60-857', 'Poznań');
INSERT INTO "Adresy" VALUES (1, '532132555', NULL, 'Grzybowska 124', '41-808', 'Zabrze');
INSERT INTO "Adresy" VALUES (2, '676520095', NULL, 'Majora Hubala 86', '15-174', 'Białystok');
INSERT INTO "Adresy" VALUES (3, '536911358', NULL, 'Bysewska 104', '80-298', 'Gdańsk');
INSERT INTO "Adresy" VALUES (4, '884977339', NULL, 'Małopolska 140', '60-619', 'Poznań');

INSERT INTO "Klienci" VALUES (0, 'Ruta', 'Szczepańska', '1947-05-19', 4);
INSERT INTO "Klienci" VALUES (1, 'Narcyz', 'Adamczyk', '1970-09-31', 3);
INSERT INTO "Klienci" VALUES (2, 'Mikołaj', 'Nowakowski', '1939-12-03', 2);

INSERT INTO "Pracownicy" VALUES (0, 'Świętosław', 'Wieczorek', '1985-05-01', '85050172453', 'M', 1);
INSERT INTO "Pracownicy" VALUES (1, 'Gertruda', 'Król', '1970-09-14', '70091470307', 'K', 0);
