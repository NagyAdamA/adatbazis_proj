CREATE DATABASE Közlekedés;

USE Közlekedés;

CREATE TABLE Jármű (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    típus VARCHAR(10) CHECK(típus IN ('HÉV', 'Busz', 'Trolibusz', 'Metró', 'Villamos')),
    gyártási_év YEAR,
    gyártmány VARCHAR(20),
    üzemeltető VARCHAR(7) CHECK(üzemeltető IN ('BKK', 'MÁV-HÉV')),
    akadalymentesitett BOOLEAN
);

CREATE TABLE Megálló(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    név VARCHAR(50),
    akadalymentesitett BOOLEAN
);

CREATE TABLE Menetrend(
    járatszam VARCHAR(4),
    dátum DATE,
    indul TIME,
    érkezik TIME,
    jármű_id INT,
    megálló_id INT,
    FOREIGN KEY (jármű_id) REFERENCES jármű(id),
    FOREIGN KEY (megálló_id) REFERENCES Megálló(id)
);
