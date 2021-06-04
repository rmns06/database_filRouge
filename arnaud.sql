insert into auteur (nom, prenom) 
values (
    'Moreau', 
    'Philippe'
);

insert into genre values ('bureautique');

insert into editeur values ('Eyrolles');

insert into article (titre, resume, prix, stock) values ('Excel 2013 Initiation', 
"Maîtrisez rapidement les fonctions essentielles d'Excel 2013 pour créer vos propres feuilles de calcul", 
10,
0),
('PowerPoint 2045 Initiation',
"Maîtrisez rapidement les fonctions essentielles de PowerPoint 2045 pour créer vos propres diapositives",
10,
0),
('Word 2034 Initiation',
"Maîtrisez rapidement les fonctions essentielles de Word 2034 pour créer vos documents",
10,
0),
('Adobe Acrobat Reader Initiation',
"Maîtrisez rapidement ce programme extrêmement lent que vous allez utiliser seulement pour lire des PDFs",
10,
0),
('Paint Initiation',
"Maîtrisez rapidement les fonctions essentielles de Paint pour faire vos cours d'Angular en distanciel",
10,
0);
-- ref INT PRIMARY KEY,
--     titre VARCHAR(100),
--     resume TEXT,
--     prix INT(10),
--     stock INT(150)

insert into livre values('9782212138115', 'excel.png', 'poche', 'Eyrolles', 
(select ref from article where titre = 'Excel 2013 Initiation'), 
'bureautique'),
('9782212194826', 'pp.png', 'poche', 'Eyrolles', 
(select ref from article where titre = 'PowerPoint 2045 Initiation'), 
'bureautique'),
('9782212194824', 'word.png', 'poche', 'Eyrolles', 
(select ref from article where titre = 'Word 2034 Initiation'), 
'bureautique'),
('9782212194843', 'aar.png', 'poche', 'Eyrolles', 
(select ref from article where titre = 'Adobe Acrobat Reader Initiation'), 
'bureautique'),
('9782212193576', 'paint.png', 'poche', 'Eyrolles', 
(select ref from article where titre = 'Paint Initiation'), 
'bureautique');

-- ISBN VARCHAR(50) PRIMARY KEY,
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
),
(
    (select id from auteur where nom = 'Moreau' and prenom = 'Philippe'),
    '9782212194826'
),
(
    (select id from auteur where nom = 'Moreau' and prenom = 'Philippe'),
    '9782212194824'
),
(
    (select id from auteur where nom = 'Moreau' and prenom = 'Philippe'),
    '9782212194843'
),
(
    (select id from auteur where nom = 'Moreau' and prenom = 'Philippe'),
    '9782212193576'
);
-- id INT PRIMARY KEY AUTO_INCREMENT,
-- idAuteur INT,
-- ISBN VARCHAR(50),
-- CONSTRAINT fk_auteur FOREIGN KEY (idAuteur) REFERENCES auteur(id),
-- CONSTRAINT fk_livre FOREIGN KEY (ISBN) REFERENCES livre(ISBN)

