DROP DATABASE IF EXISTS IMMO;
CREATE DATABASE IF NOT EXISTS IMMO;
USE IMMO;

    CREATE TABLE woningen (
        id INT PRIMARY KEY AUTO_INCREMENT,
        addres VARCHAR(200) NOT NULL,
        postcode VARCHAR(6) NOT NULL,
        kamers INT NOT NULL,
        omschrijving TEXT NOT NULL ,
        vraagprijs DECIMAL(10,2) NOT NULL
    );

    CREATE TABLE kopers (
        id INT PRIMARY KEY AUTO_INCREMENT,
        naam VARCHAR(50) NOT NULL ,
        voornaam VARCHAR(50) NOT NULL
    );

    CREATE TABLE biedingen (
        koper_id INT NOT NULL ,
        woning_id INT NOT NULL ,
        bod DECIMAL(10,2) NOT NULL ,
        datum DATETIME NOT NULL ,
        PRIMARY KEY (koper_id,woning_id),
        FOREIGN KEY (koper_id) REFERENCES kopers(id),
        FOREIGN KEY (woning_id) REFERENCES woningen(id)
    );

    CREATE TABLE backups(
        id INT PRIMARY KEY AUTO_INCREMENT,
        naam VARCHAR(50) NOT NULL ,
        voornaam VARCHAR(50) NOT NULL ,
        addres VARCHAR(200) NOT NULL ,
        postcode VARCHAR(6) NOT NULL ,
        kamers INT NOT NULL ,
        omschrijving TEXT NOT NULL ,
        vraagprijs DECIMAL(10,2) NOT NULL ,
        bod DECIMAL(10, 2)NOT NULL ,
        datum DATETIME NOT NULL
    )