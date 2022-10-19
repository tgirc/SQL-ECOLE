

-- Script SQL

-- Langage de definition de données

-- Creation d'un base de données
DROP DATABASE IF EXISTS ecole;
CREATE DATABASE ecole;


-- utilisation BDD ecole
USE ecole;

-- creation table
CREATE TABLE Cours(
	codecours varchar(50) PRIMARY KEY,
    nomcours varchar(50),
    enseignant varchar(45)
);

CREATE TABLE etudiant(
	Matricule varchar(50) PRIMARY KEY,
	Nom varchar(50),
	prenom varchar(50),
	Niveau varchar(50),
	DateNaissance date
);

CREATE TABLE Examen(
	Matricule varchar(50),
	codecours varchar(50),
    Note varchar(50),
    FOREIGN KEY (Matricule) REFERENCES etudiant (Matricule),
    FOREIGN KEY (codecours) REFERENCES Cours (codecours),
	PRIMARY KEY (Matricule, codecours)
);

insert into Cours values
("1","Math","zoomzoom"),
("2","geo","robin"),
("3","angl","valery"),
("4","eps","debast");

insert into etudiant values
("974","gonzag","tony","1","1983-12-31"),
("06","machin","bidul","2","1981-01-01"),
("05","diablo","didi","3","1990-08-01"),
("07","baal","ba","4","1992-08-01");
