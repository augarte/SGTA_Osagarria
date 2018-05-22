CREATE TABLE Erabiltzailea(
	nan VARCHAR(9) NOT NULL UNIQUE,
	izena VARCHAR(100) NOT NULL, 
	abizenak VARCHAR(100) NOT NULL, 
	pasahitza VARCHAR(255) NOT NULL,
	emaila VARCHAR(100) NOT NULL,
	telefonoa INT(12) NOT NULL,
	helbidea VARCHAR(255) NOT NULL,
	sortze_data DATE NOT NULL, 
	PRIMARY KEY (nan));

CREATE TABLE Faboritoa(
	id INT NOT NULL AUTO_INCREMENT, 
	erabiltzaile_id VARCHAR(9) NOT NULL,
	faborito_id VARCHAR(9) NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY (erabiltzaile_id) REFERENCES Erabiltzailea (nan),
	FOREIGN KEY (faborito_id) REFERENCES Erabiltzailea (nan));

-- CREATE TABLE Kontua(
-- 	kontu_zenbakia VARCHAR(24) NOT NULL,
-- 	iban VARCHAR(4) NOT NULL,
-- 	bankua INT(4) NOT NULL,
-- 	bulegoa INT(4) NOT NULL,
-- 	kontrola INT(2) NOT NULL,
-- 	zenbakia INT(10) NOT NULL AUTO_INCREMENT,
-- 	erabiltzaile_id VARCHAR(9) NOT NULL,
-- 	PRIMARY KEY (zenbakia, kontu_zenbakia),
-- 	FOREIGN KEY (erabiltzaile_id) REFERENCES Erabiltzailea (nan));

CREATE TABLE Kontua(
	kontu_zenbakia VARCHAR(24) NOT NULL,
	erabiltzaile_id VARCHAR(9) NOT NULL,
	PRIMARY KEY (kontu_zenbakia),
	FOREIGN KEY (erabiltzaile_id) REFERENCES Erabiltzailea (nan));

CREATE TABLE Transakzioa(
	id INT NOT NULL AUTO_INCREMENT,
	bildaltzaile_kontua VARCHAR(24) NOT NULL,
	hartzaile_kontua VARCHAR(24) NOT NULL,
	kopurua INT NOT NULL,
	azalpena VARCHAR(255),
	data DATE NOT NULL,
	CHECK (kopurua>0),
	PRIMARY KEY (id),
	FOREIGN KEY (bildaltzaile_kontua) REFERENCES Kontua (kontu_zenbakia),
	FOREIGN KEY (hartzaile_kontua) REFERENCES Kontua (kontu_zenbakia));


