insert into auteur (nom, prenom) 
values (
    'Moreau', 
    'Philippe'
);

insert into genre values ('bureautique');

insert into editeur values ('Eyrolles');

insert into article values ('Excel 2013 Initiation', 
"Maîtrisez rapidement les fonctions essentielles d'Excel 2013 pour créer vos propres feuilles de calcul", 
10,
0);
-- ref INT PRIMARY KEY,
--     titre VARCHAR(100),
--     resume TEXT,
--     prix INT(10),
--     stock INT(150)

insert into livre values('9782212138115', 'excel.png', 'poche', 'Eyrolles', 
(select ref from article where titre = 'Excel 2013 Initiation'), 
'bureautique');

-- ISBN INT PRIMARY KEY,
--     imageLivre VARCHAR(50),
--     formatLivre VARCHAR(40),
--     nomEditeur VARCHAR (50),
--     refArticle INT,
--     nomGenre VARCHAR(50),
--     CONSTRAINT fk_article FOREIGN KEY (refArticle) REFERENCES article(ref),
--     CONSTRAINT fk_genre FOREIGN KEY (nomGenre) REFERENCES genre(nom),
--     CONSTRAINT fk_editeur FOREIGN KEY (nomEditeur) REFERENCES editeur(nom)

insert into auteurLivre (idAuteur, ISBN) values (
    (select id from auteur where nom = 'Moreau' and prenom = 'Philippe'),
    '9782212138115'
);
-- id INT PRIMARY KEY AUTO_INCREMENT,
-- idAuteur INT,
-- ISBN INT,
-- CONSTRAINT fk_auteur FOREIGN KEY (idAuteur) REFERENCES auteur(id),
-- CONSTRAINT fk_livre FOREIGN KEY (ISBN) REFERENCES livre(ISBN)

