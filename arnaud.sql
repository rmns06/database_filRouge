USE fil_rouge;

insert into auteur (nom, prenom) 
values (
    'Moreau', 
    'Philippe'
);

insert into genre values ('bureautique'), ('multimedia');

insert into editeur values ('Eyrolles');


-- articles bureautique
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

-- articles multimedia
insert into article (titre, resume, prix, stock) values ('Photoshop Initiation', 
"Maîtrisez rapidement ce logiciel propriétaire très cher pour vous faire du lifting sur vos photos", 
10,
3),
('Windows Movie Maker Initiation',
"Maîtrisez rapidement Windows Movie Maker pour faire vos montages Naruto sur du Linkin Park en 144p",
10,
5),
('Audacity Initiation',
"Maîtrisez rapidement Audacity afin d'enregistrer des reprises de vos chansons préférées",
10,
1),
('FL Studio Initiation',
"Prenez-vous pour un grand producteur de trap en créant des beats en carton avec FL Studio",
10,
7),
('MPV Initiation',
"Découvrez ce lecteur multimédia extrêmement léger et extensible",
10,
0);

-- ref INT PRIMARY KEY,
--     titre VARCHAR(100),
--     resume TEXT,
--     prix INT(10),
--     stock INT(150)


-- livres bureautique
insert into livre values('9782212138115', 'https://zupimages.net/up/21/23/vxok.jpg', 'poche', 'Eyrolles', 
(select ref from article where titre = 'Excel 2013 Initiation'), 
'bureautique'),
('9782212194826', 'https://zupimages.net/up/21/23/op1x.jpg', 'poche', 'Eyrolles', 
(select ref from article where titre = 'PowerPoint 2045 Initiation'), 
'bureautique'),
('9782212194824', 'https://zupimages.net/up/21/23/dcgc.jpg', 'poche', 'Eyrolles', 
(select ref from article where titre = 'Word 2034 Initiation'), 
'bureautique'),
('9782212194843', 'https://zupimages.net/up/21/23/rp3z.jpg', 'poche', 'Eyrolles', 
(select ref from article where titre = 'Adobe Acrobat Reader Initiation'), 
'bureautique'),
('9782212193576', 'https://zupimages.net/up/21/23/xnlq.jpg', 'poche', 'Eyrolles', 
(select ref from article where titre = 'Paint Initiation'), 
'bureautique');

-- livres multimedia
insert into livre values('9154357854552', 'https://zupimages.net/up/21/23/c5i8.jpg', 'poche', 'Eyrolles', 
(select ref from article where titre = 'Photoshop Initiation'), 
'multimedia'),
('9736912194826', 'https://zupimages.net/up/21/23/0xro.jpg', 'poche', 'Eyrolles', 
(select ref from article where titre = 'Windows Movie Maker Initiation'), 
'multimedia'),
('9776481594824', 'https://zupimages.net/up/21/23/r80p.jpg', 'poche', 'Eyrolles', 
(select ref from article where titre = 'Audacity Initiation'), 
'multimedia'),
('9782216485529', 'https://zupimages.net/up/21/23/bvxo.jpg', 'poche', 'Eyrolles', 
(select ref from article where titre = 'FL Studio Initiation'), 
'multimedia'),
('9758155469976', 'https://zupimages.net/up/21/23/nqmu.jpg', 'poche', 'Eyrolles', 
(select ref from article where titre = 'MPV Initiation'), 
'multimedia');

-- ISBN VARCHAR(50) PRIMARY KEY,
--     imageLivre VARCHAR(50),
--     formatLivre VARCHAR(40),
--     nomEditeur VARCHAR (50),
--     refArticle INT,
--     nomGenre VARCHAR(50),
--     CONSTRAINT fk_article FOREIGN KEY (refArticle) REFERENCES article(ref),
--     CONSTRAINT fk_genre FOREIGN KEY (nomGenre) REFERENCES genre(nom),
--     CONSTRAINT fk_editeur FOREIGN KEY (nomEditeur) REFERENCES editeur(nom)


-- auteurLivre bureautique
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

-- auteurLivre multimedia
insert into auteurLivre (idAuteur, ISBN) values (
    (select id from auteur where nom = 'Moreau' and prenom = 'Philippe'),
    '9154357854552'
),
(
    (select id from auteur where nom = 'Moreau' and prenom = 'Philippe'),
    '9736912194826'
),
(
    (select id from auteur where nom = 'Moreau' and prenom = 'Philippe'),
    '9776481594824'
),
(
    (select id from auteur where nom = 'Moreau' and prenom = 'Philippe'),
    '9782216485529'
),
(
    (select id from auteur where nom = 'Moreau' and prenom = 'Philippe'),
    '9758155469976'
);

-- id INT PRIMARY KEY AUTO_INCREMENT,
-- idAuteur INT,
-- ISBN VARCHAR(50),
-- CONSTRAINT fk_auteur FOREIGN KEY (idAuteur) REFERENCES auteur(id),
-- CONSTRAINT fk_livre FOREIGN KEY (ISBN) REFERENCES livre(ISBN)

