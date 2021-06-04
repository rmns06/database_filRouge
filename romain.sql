insert into
    editeur
values
    ('DUNOD'),
    ('Editions ENI'),
    ('QSG');
insert into genre values ('bureautique'),('transformation digitale');

insert into auteur (nom, prenom) 
values ('Christoph', 'Bierman'),('Essa', 'Alfred');


insert into
    article (titre,
    resume,
    prix,
    stock)
values
    (
        'Big Data et Machine Learning - 3e éd.',
        "Les concepts et les outils de la data science: Les concepts et les outils de la data science. Cet ouvrage s’adresse à tous ceux qui cherchent à tirer parti de  l’énorme potentiel des technologies Big Data, qu’ils soient data  scientists, DSI, chefs de projets ou spécialistes métier.
Le Big Data s’est imposé comme une innovation majeure pour  toutes les entreprises qui cherchent à construire un avantage  concurrentiel de l’exploitation de leurs données clients,  fournisseurs, produits, processus, etc.",
        29.90,
        20
    ),
    (
        'Big Data, Smart Data, Stupid Data...',
        "Demain, tout, absolument tout, produira de la data. Les entreprises qui sauront s’en servir réussiront. Les autres disparaîtront. Vous souhaitez décoller et réussir ? Ce livre est fait pour vous ! Pratique et piquant, il vous guidera étape par étape. Pour réussir, il vous faut tout bousculer : vos procédures, vos talents, votre culture… jusqu’à votre proposition de valeur ! Stratégies, exécution, casting, contraintes règlementaires… ce petit manuel traitera de tout, sans tabou, pour vous permettre d’aller droit au but ! N’attendez plus, lancez-vous !",
        17.90,
        15
    ),  
    (
        'Hadoop - Devenez opérationnel dans le monde du Big Data',
        "Depuis plusieurs années, la France montre au travers du projet de Nouvelle France Industrielle (NFI) son ambition de se positionner stratégiquement sur le Big Data. Par ce projet, l État reconnaît officiellement qu'au-delà de tout l'engouement médiatique autour du Big Data, la transition vers l'ère Numérique est bien réelle et que les opportunités du Big Data sont bel et bien existantes.
        Ce livre a pour objectif d'équiper le lecteur de toutes les compétences dont il a besoin pour saisir les opportunités offertes par le Big Data. Il s'adresse à toute personne qui souhaite prendre le virage du Numérique et travailler dans le Big Data : étudiants, consultants, analystes, chargés d'étude ou de recrutement Data, commerciaux de ESN, responsables de projet, développeurs, managers ou encore dirigeants d'entreprise.",
        39.00,
        45
    ),
    (
        'Le Big Data',
        "Le numérique imprègne le monde. Dans ses données massives, les mathématiques trouvent des modèles qui, sous condition, font prendre de l'avance sur le présent, voire le futur ; alertes avancées d'épidémie, bannières calculées durant l'affichage des pages web, exposition à certains cancers, fréquentation de congrès, etc. En présentant les principes du Big Data, ses données caractéristiques et en quoi ils diffèrent de ceux de l'informatique, cet ouvrage fait le point sur les technologies, les concepts mathématiques, de machine learning et d'intelligence artificielle ainsi que les postes et compétences nécessaires aux transformations numériques des entreprises et de leurs modèles d'affaires.",
        9.00,
        12
    ),
    (
        'Bases de données - 4e éd',
        "Ce manuel vise un triple objectif : comprendre les concepts théoriques, apprendre à utiliser des bases de données, et enfin savoir en construire de nouvelles.
La première partie explique les notions de base sur les structures de données, les systèmes de gestion de bases de données, le modèle relationnel... 
La deuxième décrit le langage SQL  et les fonctions qui permettent de tirer le meilleur parti d'une base de données.
La dernière partie détaille les méthodes de construction des bases de données relationnelles puis des bases relationnelles-objet.
L'ouvrage papier est complété par un site web comprenant des tutoriels, des exercices corrigés, des planches PowerPoint destinées aux enseignants. Ces tutoriels permettent à l'étudiant de mettre en pratique de manière active les notions expliquées dans le livre.",
        37.00,
        24
    );


-- ref INT PRIMARY KEY,
--     titre VARCHAR(100),
--     resume TEXT,
--     prix INT(10),
--     stock INT(150)
insert into
    livre 
values
    (
        '978-2409007613',
        'bigdata3.png',
        'Broche',
        'DUNOD',
        (
            select
                ref
            from
                article
            where
                titre = 'Hadoop - Devenez opérationnel dans le monde du Big Data'
        ),
        'transformation digitale'
    ),
    (
        '978-2100773510',
        'bigdata2.jpg',
        'Broche',
        'DUNOD',
        (
            select
                ref
            from
                article
            where
                titre = 'Big Data, Smart Data, Stupid Data...'
        ),
        'transformation digitale'
    ),
    (
        '978-2501140997',
        'bigdata3.jpg',
        'Broche',
        'Editions ENI',
        (
            select
                ref
            from
                article
            where
                titre = 'Hadoop - Devenez opérationnel dans le monde du Big Data'
        ),
        'transformation digitale'
    ),
    (
        '978-2130792215',
        'bigdata4.jpg',
        'Broche',
        'QSG',
        (
            select
                ref
            from
                article
            where
                titre = 'Le Big Data'
        ),
        'transformation digitale'
    ),
    (
        '978-2100790685',
        'bdd1.jpg',
        'Broche',
        'DUNOD',
        (
            select
                ref
            from
                article
            where
                titre = 'Bases de données - 4e éd'
        ),
        'transformation digitale'
    );



--     ISBN INT PRIMARY KEY,
--     imageLivre VARCHAR(50),
--     formatLivre VARCHAR(40),
--     nomEditeur VARCHAR (50),
--     refArticle INT,
--     nomGenre VARCHAR(50),
--     CONSTRAINT fk_article FOREIGN KEY (refArticle) REFERENCES article(ref),
--     CONSTRAINT fk_genre FOREIGN KEY (nomGenre) REFERENCES genre(nom),
--     CONSTRAINT fk_editeur FOREIGN KEY (nomEditeur) REFERENCES editeur(nom)
insert into
    auteurLivre (idAuteur, ISBN)
values
    (
        (
            select
                id
            from
                auteur
            where
                nom = 'Christoph'
                and prenom = 'Bierman'
        ),
        '978-2409007613'
    ),
    (
        (
            select
                id
            from
                auteur
            where
                nom = 'Christoph'
                and prenom = 'Bierman'
        ),
        '978-2100773510'
    ),  (
        (
            select
                id
            from
                auteur
            where
                nom = 'Essa'
                and prenom = 'Alfred'
        ),
        '978-2501140997'
    ),(
        (
            select
                id
            from
                auteur
            where
                nom = 'Essa'
                and prenom = 'Alfred'
        ),
        '978-2130792215'
    ),(
        (
            select
                id
            from
                auteur
            where
                nom = 'Essa'
                and prenom = 'Alfred'
        ),
        '978-2100790685'
    );



-- id INT PRIMARY KEY AUTO_INCREMENT,
-- idAuteur INT,
-- ISBN INT,
-- CONSTRAINT fk_auteur FOREIGN KEY (idAuteur) REFERENCES auteur(id),
-- CONSTRAINT fk_livre FOREIGN KEY (ISBN) REFERENCES livre(ISBN)