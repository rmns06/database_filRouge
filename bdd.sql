
CREATE DATABASE fil_rouge;
USE fil_rouge;

CREATE TABLE article(
    ref INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(100),
    resume TEXT,
    prix INT,
    stock INT
);

CREATE TABLE adresse(
    id INT PRIMARY KEY AUTO_INCREMENT,
    num INT,
    rue VARCHAR(200),
    cp VARCHAR(5),
    ville VARCHAR (50),
    complement VARCHAR (150)
);

CREATE TABLE auteur(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR (30),
    prenom VARCHAR (30)
);

CREATE TABLE facture (
    num INT PRIMARY KEY AUTO_INCREMENT, 
    dateFacture DATE
);

CREATE TABLE genre (nom VARCHAR(50) PRIMARY KEY);

CREATE TABLE editeur (nom VARCHAR(50) PRIMARY KEY);

CREATE TABLE utilisateur(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(30),
    prenom VARCHAR (30),
    email VARCHAR(50) UNIQUE,
    mdp VARCHAR(50),
    adresse INT,
    adresseLivraison INT,
    CONSTRAINT fk_utilisateur_adresse FOREIGN KEY (adresse) REFERENCES adresse(ID),
    CONSTRAINT fk_utilisateur_adresseLivraison FOREIGN KEY (adresseLivraison) REFERENCES adresse(ID)
);

CREATE TABLE commande (
    num INT PRIMARY KEY,
    dateCommande DATE,
    total int,
    idUtilisateur int,
    CONSTRAINT fk_utilisateur FOREIGN KEY (idUtilisateur) REFERENCES utilisateur(id)
);

CREATE TABLE LigneCommande (
    id INT PRIMARY KEY NOT NULL,
    quantiteCommande INT,
    refArticle INT,
    numCommande INT,
    CONSTRAINT fk_articleCmd FOREIGN KEY (refArticle) REFERENCES article(ref),
    CONSTRAINT fk_commandeCmd FOREIGN KEY (numCommande) REFERENCES commande(num)
);

CREATE TABLE livre (
    ISBN INT PRIMARY KEY,
    imageLivre VARCHAR(50),
    formatLivre VARCHAR(40),
    nomEditeur VARCHAR (50),
    refArticle INT,
    nomGenre VARCHAR(50),
    CONSTRAINT fk_article FOREIGN KEY (refArticle) REFERENCES article(ref),
    CONSTRAINT fk_genre FOREIGN KEY (nomGenre) REFERENCES genre(nom),
    CONSTRAINT fk_editeur FOREIGN KEY (nomEditeur) REFERENCES editeur(nom)
);

CREATE TABLE auteurLivre(
    id INT PRIMARY KEY AUTO_INCREMENT,
    idAuteur INT,
    ISBN INT,
    CONSTRAINT fk_auteur FOREIGN KEY (idAuteur) REFERENCES auteur(id),
    CONSTRAINT fk_livre FOREIGN KEY (ISBN) REFERENCES livre(ISBN)
);

CREATE TABLE commandeFacture(
    id INT PRIMARY KEY AUTO_INCREMENT,
    numCommande INT,
    numFacture INT,
    CONSTRAINT fk_commande FOREIGN KEY (numCommande) REFERENCES commande(num),
    CONSTRAINT fk_facture FOREIGN KEY (numFacture) REFERENCES facture(num)
);

--drop database fil_rouge;