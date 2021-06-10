insert into
    editeur
values
    ('DUNOD'),
    ('Editions ENI'),
    ('QSG');

insert into
    genre
values
    ('transformation digitale'),
('languages de programmation');

insert into
    auteur (nom, prenom)
values
    ('Christoph', 'Bierman'),
('Essa', 'Alfred'),
('Hondermarck', 'Olivier'),
('Swinnen', 'Gérard');

insert into
    article (titre, resume, prix, stock)
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
    ),
    (
        'Tout JavaScript - 2e éd',
        "Ce livre s’adresse à tous les développeurs web, qu’ils soient  débutants ou avancés.
Le JavaScript sert avant tout à rendre les pages web interactives  et dynamiques du côté de l’utilisateur, mais il est  également de plus en plus utilisé pour créer des applications  complètes, y compris côté serveur.
La première partie de ce livre couvre l’ensemble  des fonctionnalités du JavaScript (version  ECMAScript 6 jusque ES2020) et passe en revue les  bonnes pratiques de programmation.
La deuxième partie porte sur l’interactivité avec  les utilisateurs (interfaces, formulaires, gestion  des erreurs, appels asynchrones, géolocalisation,  notifications, dessin…).
La troisième partie permet de s’initier aux aspects  les plus avancés du JavaScript tels que Node.js,  React, Vue.js, jQuery ou les Web Workers.
Une première annexe guide le développeur web dans l’installation  en local de son environnement de travail complet avec  serveur web, PHP et base de données, grâce à Docker. Une  deuxième introduit l’usage du JavaScript dans l’environnement  cloud Google Sheets, et une dernière concerne CSS.",
        29.90,
        32
    ),
    (
        'Apprendre à programmer avec Python 3',
        "Reconnu et utilisé par les enseignants de nombreuses écoles et IUT, complété d'exercices accompagnés de leurs corrigés, cet ouvrage original et érudit est une référence sur tous les fondamentaux de la programmation : choix d'une structure de données, paramétrage, modularité, orientation objet en héritage, conception d'interface, multithreading et gestion d'événements, protocoles de communication et gestion réseau, bases de données... jusqu'à la désormais indispensable norme Unicode (le format UTF-8). On verra notamment la réalisation avec Python 3 d'une application web interactive et autonome, intégrant une base de données SQLite. Cette nouvelle édition traite de la possibilité de produire des documents imprimables (PDF) de grande qualité en exploitant les ressources combinées de Python 2 et Python 3.",
        32.40,
        56
    ),
    (
        'Node.js - Exploitez la puissance de JavaScript côté serveur',
        "Ce livre s'adresse aux développeurs souhaitant découvrir et maîtriser le framework JavaScript Node. La maîtrise du développement en JavaScript ainsi que de bonnes connaissances sur les outils en ligne de commande sont nécessaires afin de tirer le meilleur parti de ce livre.
Les auteurs ont choisi une progression pédagogique qui démarre de l'installation de Node sur les trois grands systèmes d'exploitation (GNU/Linux, OS X et Windows) suivie d'une présentation des concepts essentiels du framework.
Ils expliquent ensuite le fonctionnement du gestionnaire de paquets « ; npm », qui est le compagnon quotidien du développeur Node, puis décrivent les outils de développement qui permettent d'améliorer la qualité du code et de simplifier la vie du développeur en automatisant un maximum de tâches (comme par exemple JSHint et Gulp).",
        39.00,
        6
    ),
    (
        'Programmer en Java: Couvre Java 10 à Java 14',
        "Dans cet ouvrage, Claude Delannoy applique au langage Java la démarche pédagogique qui a fait le succès de ses livres sur le C et le C++. Il insiste tout particulièrement sur la bonne compréhension des concepts objet et sur l’acquisition de méthodes de programmation rigoureuses.
L’apprentissage du langage se fait en quatre étapes : apprentissage de la syntaxe de base, maîtrise de la programmation objet en Java, initiation à la programmation graphique et événementielle avec la bibliothèque Swing, introduction au développement web avec les servlets Java et les JSP.
L’ouvrage met l’accent sur les apports des versions 5 à 9 de Java Standard Edition, qui ont fait évoluer la manière de programmer en Java : programmation générique, types énumérés, annotations, streams et expressions lambda, outil JShell, Java Platform Module System (ex-projet Jigsaw), etc. Un chapitre est dédié aux Design Patterns en Java et cette 11 e édition présente les nouveautés des versions 10 à 14 de Java SE : déclaration var, variante de l’instruction switch et expression switch, écriture simpliﬁée des blocs de texte (Text Blocks), etc.",
        38,
        12
    ),
    (
        'Apprendre la Programmation Orientée Objet avec le langage Java',
        "L'auteur présente ensuite la machine virtuelle Java, son intérêt, sa richesse et un environnement de développement avec IntelliJ IDEA de la société JetBrains. Le lecteur découvre comment Java reproduit les principes de la POO en suivant des explications simples, des exemples concrets et en réalisant des exercices d'entraînement. Il découvre également les types de base du développement Java et leur utilisation, comment exploiter un IDE pour simplifier la saisie des programmes et les mettre au point. Les programmes d'essais sont de type console ou graphique, basés sur l'utilisation de Swing pour illustrer les communications entre objets. Quand ils sont pertinents, des parallèles sont menés avec les langages de programmation objet C++ et C#. La programmation multithread permettant l'exécution simultanée de plusieurs flux d'instructions est présentée, suivie d'une introduction aux tests unitaires tellement importants pour fiabiliser les objets. Une partie consacrée à la réflexion en Java promet quelques surprises. Enfin, le dernier chapitre est consacré aux classes anonymes et aux expressions lambda.",
        29.90,
        18
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
        'https://zupimages.net/up/21/23/i7di.jpg',
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
        'https://zupimages.net/up/21/23/7ih4.jpg',
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
        'https://zupimages.net/up/21/23/cf8r.png',
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
        'https://zupimages.net/up/21/23/zdsp.jpg',
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
        'https://zupimages.net/up/21/23/5gfn.jpg',
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
    ),
    (
        '978-2100814305',
        'https://zupimages.net/up/21/23/e8td.jpg',
        'Broche',
        'QSG',
        (
            select
                ref
            from
                article
            where
                titre = 'Tout JavaScript - 2e éd'
        ),
        'languages de programmation'
    ),
(
    -- ici bug
        '978-2746089785',
        'https://zupimages.net/up/21/23/o8cs.jpg',
        'Broche',
        'Editions ENI',
        (
            select
                ref
            from
                article
            where
                titre = 'Node.js - Exploitez la puissance de JavaScript côté serveur'
        ),
        'languages de programmation'
    ),
(
        '978-2212134346',
        'https://zupimages.net/up/21/23/2k4r.jpg',
        'Broche',
        'Eyrolles',
        (
            select
                ref
            from
                article
            where
                titre = 'Apprendre à programmer avec Python 3'
        ),
        'languages de programmation'
    ),
(
        '978-2416000188',
        'https://zupimages.net/up/21/23/zvf9.jpg',
        'Broche',
        'Eyrolles',
        (
            select
                ref
            from
                article
            where
                titre = 'Programmer en Java: Couvre Java 10 à Java 14'
        ),
        'languages de programmation'
    ),
(
        '978-2409026300',
        'https://zupimages.net/up/21/23/xmzo.jpg',
        'Broche',
        'Editions ENI',
        (
            select
                ref
            from
                article
            where
                titre = 'Apprendre la Programmation Orientée Objet avec le langage Java'
        ),
        'languages de programmation'
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
    ),
    (
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
    ),
(
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
    ),
(
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
        '978-2746089785'
    ),
(
        (
            select
                id
            from
                auteur
            where
                nom = 'Swinnen'
                and prenom = 'Gérard'
        ),
        '978-2212134346'
    ),
(
        (
            select
                id
            from
                auteur
            where
                nom = 'Swinnen'
                and prenom = 'Gérard'
        ),
        '978-2416000188'
    ),
(
        (
            select
                id
            from
                auteur
            where
                nom = 'Hondermarck'
                and prenom = 'Olivier'
        ),
        '978-2409026300'
    );

-- id INT PRIMARY KEY AUTO_INCREMENT,
-- idAuteur INT,
-- ISBN INT,
-- CONSTRAINT fk_auteur FOREIGN KEY (idAuteur) REFERENCES auteur(id),
-- CONSTRAINT fk_livre FOREIGN KEY (ISBN) REFERENCES livre(ISBN)