
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

INSERT INTO livre(
    978-2-212-55626-1, '1.jpg', broché, refArticle, nomGenre, nomEditeur)
)

INSERT INTO genre(
    métiers de la formation
)

INSERT INTO editeur(
    Eyrolles
)

INSERT INTO auteur(
    id, Castor, Père 
)

INSERT INTO article(
    ref, "Animer un groupe leadership, communication et résolution de conflits", "Animer un groupe est un exercice délicat qui implique autant de savoir-être que de savoir-faire. Comment favoriser l'épanouissement des individus, faciliter l'organisation collective du travail, gérer les situations critiques... tout en restant soi-même, authentique et responsable ? Que vous soyez amené à animer un groupe de façon régulière ou non, dans un contexte social ou professionnel, ce guide vous propose un ensemble de méthodes et techniques pour : - communiquer avec efficacité et sans stress, - développer votre leadership, - repérer les phénomènes d'influence qui entrent en jeu dans le groupe, - intervenir de façon constructive en cas de problème. Vous y trouverez notamment des outils de travail adaptés à diverses situations: l'organisation d'une table ronde, d'une conférence-débat, d'une réunion de travail...", 23, 250)

INSERT INTO auteurLivre(
    id, idAuteur, ISBN
)
INSERT INTO livre(
    978-2-100-05938-6, '2', broché, refArticle, nomGenre, nomEditeur)
)

INSERT INTO genre(
    métiers de la formation
)

INSERT INTO editeur(
    Dunod
)

INSERT INTO auteur(
    id, Daronne, Chantal 
)

INSERT INTO article(
    ref, "Les nouveaux métiers de la formation de la formation : Développer de nouvelles compétences pour une formation réinventée", "La formation évolue en profondeur sous l'impact des nouvelles technologies. Professionnels de l'enseignement et de la formation, cet ouvrage vous aidera à faire évoluer vos pratiques : anticiper les changements et manager des formateurs aux profils plus complexes ; concevoir des modules e-learning et animer des classes virtuelles synchrones ; mettre en place et gérer un projet de e-formation avec tous les nouveaux intervenants qu'il suppose ; identifier les nouveaux métiers de la formation émergents de la formation (responsable de centre de formation virtuel d'entreprise, designer pédagogique, ergonome d'applicatifs éducatifs, e-tuteur...). Véritables pionniers du e-learning et spécialistes des nouvelles modalités d'apprentissage, les auteurs s'adressent aux responsables de formation, aux formateurs et aux enseignants qui souhaitent se préparer efficacement à l'évolution de leur métier, ainsi qu'à tous ceux qui souhaitent trouver de nouvelles opportunités dans la formation."

INSERT INTO auteurLivre(
    id, idAuteur, ISBN
)
INSERT INTO livre(
    978-2-130-81036-0, '3', broché, refArticle, nomGenre, nomEditeur)
)

INSERT INTO genre(
    métiers de la formation
)

INSERT INTO editeur(
    PUF
)

INSERT INTO auteur(
    id, Cifali, Mireille 
)

INSERT INTO article(
    ref, "S'engager pour accompagner: Valeurs des métiers de la formation de la formation", "La part de l'engagement dans la formation, qu'il s'agisse de former ou de se former, est essentielle. Engagement dans le savoir, la parole, la voix et les techniques, engagement corporel jusque dans les maladresses. Prendre des risques, se maintenir dans un processus de création jour après jour à côté des habitudes, des habiletés, des capacités et même des compétences. Pour accompagner et parfois résister, un engagement dans le savoir est-il en effet souhaitable ? Être concerné, soi, par le savoir transmis ? Attentif à l'autre à qui l'on s'adresse ? Mireille Cifali répond à ces questions par l'affirmative. Pour un formateur sont alors dessinées l'articulation fragile entre théories et pratiques, ainsi que la place indispensable réservée à un travail éthique. C'est sur son expérience de clinicienne de la formation qu'elle s'appuie pour transmettre les valeurs à l'origine de dispositifs où penser est une joie, où se former est un surcroît d'être autant que de savoir."
INSERT INTO auteurLivre(
    id, idAuteur, ISBN
)

INSERT INTO livre(
    978-2-311-62224-9, '4', broché, refArticle, nomGenre, nomEditeur)
)

INSERT INTO genre(
    métiers de la formation
)

INSERT INTO editeur(
    VUIBERT
    )

INSERT INTO auteur(
    id, Etienne, Sophie
)

INSERT INTO article(
    ref, "Formations Métiers de la formation de la formation", "La collection Pro en... propose des ouvrages pratiques permettant de consolider ses compétences professionnelles. Cet ouvrage présente les principaux outils et plans d'action à la disposition du formateur - qu'il soit du secteur public ou privé, salarié, prestataire ou indépendant - pour concevoir des formations, diagnostiquer le niveau de ses stagiaires, animer dans des contextes variés, faire progresser ses stagiaires, les évaluer, faire évoluer ses pratiques, se former en continu, gérer sa carrière... Il est très à jour des nouvelles techniques d'animation et des technologies associées.

- 68 modules ‘Outil’, agrémentés de schémas ou matrices, présentent tous les outils essentiels, spécifiques du métier : une définition ou description de l'outil, les bénéfices de son utilisation, un exemple d’application et les pièges à éviter.

- 12 ‘Plans d’action’ présentent l'intérêt du plan d'action, les actions à mener, des éclairages d'expert, des apports novateurs,au moins un cas d'entreprise et les critères de réussite du plan d'action."

INSERT INTO auteurLivre(
    id, idAuteur, ISBN
)
INSERT INTO livre(
    978-2-100-50340-7, '5', broché, refArticle, nomGenre, nomEditeur)
)

INSERT INTO genre(
    Cybersécurité
)

INSERT INTO editeur(
    Dunod
)

INSERT INTO auteur(
    id, Dax-Boyer, Françoise
)

INSERT INTO article(
    ref, "Guide des métiers de la formation de la formation", "Cet ouvrage rassemble des informations utiles à tous les formateurs ou personnes souhaitant le devenir : données statistiques, économiques et juridiques, adresses utiles, description des activités et fonctions, répertoire des diplômes préparant aux métiers de la formation de la formation, recensement des organisations professionnelles, informations sur les missions et le fonctionnement des institutions européennes dédiées à la formation..."

INSERT INTO auteurLivre(
    id, idAuteur, ISBN
)

INSERT INTO livre(
    978-2-412-05074-3, '6.jpg', broché, refArticle, nomGenre, nomEditeur)
)

INSERT INTO genre(
    Cybersécurité
)

INSERT INTO editeur(
    Interactive
)

INSERT INTO auteur(
    id, STEINBERG, Joseph 
)

INSERT INTO article(
    ref, "La Cybersécurité pour les Nuls", "Toutes les clés pour protéger vos données sur Internet

La cybersécurité consiste à se protéger d'attaques venant de cybercriminels. Ces hackers ont pour but d'utiliser vos données afin de pirater des brevets, des comptes bancaires, et de détourner toutes sortes d'informations personnelles ou secrètes.
La sécurité passe d'abord par la compréhension des attaques, du but recherché par le pirate informatique et ensuite par l'analyse des moyens à mettre en oeuvre pour sécuriser son système informatique."
    
INSERT INTO auteurLivre(
    id, idAuteur, ISBN
INSERT INTO livre(
    978-2-340-04241-4, '7.jpg', broché, refArticle, nomGenre, nomEditeur)
)

INSERT INTO genre(
   Cybersécurité
)

INSERT INTO editeur(
    Ellipses
)

INSERT INTO auteur(
    id, Salamon, Yann
)

INSERT INTO article(
    ref, "Cybersécurité et cyberdéfense : enjeux stratégiques ", "S’adressant à un panel de publics divers, cet ouvrage balaie un large panorama de sujets structurants liés à la sécurité numérique. Prenant comme point de départ la compréhension du cyberespace, il en décrit quelques propriétés importantes : tendances, enjeux, caractéristiques « topologiques », acteurs en présence. Il évoque la question de la souveraineté numérique, en tentant d’en donner des clés de compréhension. Le manuel s’attache ensuite à décrire la « menace cyber » et ses grandes tendances : sources, motivations et finalités des attaquants, cibles, modes opératoires. Cette description appellera naturellement une réflexion sur les approches, méthodes et outils permettant d’atteindre un état de cybersécurité, en gouvernant le risque cyber, en prévenant les cyberattaques et en s’organisant pour s’en protéger, les détecter et y réagir. Au-delà du niveau des individus et des organisations, sera abordée ici la question de la réponse des États et des pouvoirs publics au phénomène « d’insécurité numérique », en présentant l’approche, la doctrine et l’organisation françaises en la matière, et en explorant les questions internationales : coopérations bilatérales, organisations internationales et enjeux de régulation de la stabilité du cyberespace. Partant du principe que l’on ne peut savoir où l’on va qu’en sachant d’où l’on vient, une « brève histoire de la sécurité numérique en France » conclura ce tour d’horizon.

S’inscrivant en complément d’une littérature abordant le sujet sous un angle plus spécifique ou plus technique, ce manuel propose une synthèse riche des enjeux structurants liés à la cybersécurité. Il est basé sur un point de vue rare et précieux : celui d’un agent ayant servi pendant plusieurs années au sein de l’autorité nationale de cyberdéfense à une période clé de la structuration des écosystèmes français, européens et mondiaux de la sécurité numérique."

INSERT INTO auteurLivre(
    id, idAuteur, ISBN

INSERT INTO livre(
    978-2-340-03801-1, '8', broché, refArticle, nomGenre, nomEditeur)
)

INSERT INTO genre(
    Cybersécurité
)

INSERT INTO editeur(
    Ellipses
)

INSERT INTO auteur(
    id, De sagazan, Camille 
)

INSERT INTO article(
    ref, "Initiation à la cybersécurité", "Dans des sociétés de plus en plus dépendantes de l'informatique et des services en ligne, la cybersécurité devient une préoccupation majeure. Mais la portée réelle des risques cyber reste mal comprise, aussi bien du grand public que des professionnels de l'informatique et des réseaux. La cybersécurité paraît constituer un domaine complexe, inquiétant, et quelque peu insondable.

Cet ouvrage a été conçu pour donner une vue d'ensemble de la cybersécurité, et pour clarifier les notions qui structurent ce domaine. Il s'adresse en premier lieu à des étudiants en informatique de niveau L3 (ingénieurs, université ou IUT) dont l'enseignement comprend des matières touchant à la cybersécurité. Les ingénieurs informatiques confirmés et les responsables informatiques y trouveront également des informations de référence et des conseils pratiques."

INSERT INTO auteurLivre(
    id, idAuteur, ISBN

INSERT INTO livre(
    978-2-363-67038-0, '9.jpg', broché, refArticle, nomGenre, nomEditeur)
)

INSERT INTO genre(
    Cybersécurité
)

INSERT INTO editeur(
    Nuvis
)

INSERT INTO auteur(
    id, Boyer, Bertrand 
)

INSERT INTO article(
    ref, "Dictionnaire de la cybersécurité et des réseaux ", "Au-delà du besoin lié à certaines formations académiques (informatique, télécommunications, écoles d'ingénieurs, mais également sciences politiques et sociales, etc.), l'existence de ce dictionnaire repose sur un constat : notre incapacité à visualiser les phénomènes immatériels, l'information, son flux, sa gestion.
Ce dictionnaire a donc une vocation pédagogique. Il propose des clés de compréhension accessibles à tous pour sortir les questions numériques d'un entre-soi confortable, où les acronymes anglo-saxons le disputent au jargon technique, excluant de fait le plus grand nombre.
L'auteur s'adresse à un vaste public désireux de se forger une culture solide, de comprendre, de progresser en matière de culture numérique. Il a voulu rester ouvert, tout en demeurant rigoureux sur un plan technique, et répondre aux besoins des lecteurs qui cherchent à dépasser les lieux communs. "

INSERT INTO auteurLivre(
    id, idAuteur, ISBN

INSERT INTO livre(
    978-2-100-79054-8, '10.jpg', broché, refArticle, nomGenre, nomEditeur)
)

INSERT INTO genre(
    Cybersécurité
)

INSERT INTO editeur(
    Dunod
)

INSERT INTO auteur(
    id, Hélie, Solange Ghernaouti
)

INSERT INTO article(
    ref, "Cybersécurité - 6e éd. - Analyser les risques, mettre en oeuvre les solutions ", "Le but de cet ouvrage est de fournir une vision globale des problématiques de sécurité et de criminalité informatique. En montrant que les technologies de l'information présentent des failles susceptibles d'être exploitées à des fins criminelles, l'auteur explique les enjeux d'une maîtrise rigoureuse et méthodique de la sécurité des systèmes et des réseaux de communication. Une centaine d'exercices corrigés font de cet ouvrage un outil d'apprentissage concret et efficace.
Cette 6eédition s'enrichit de mises à jour sur les évolutions des protocoles de sécurité et sur les nouveaux modes de cyberattaques. Elle comporte en outre de nouveaux exercices."

INSERT INTO auteurLivre(
    id, idAuteur, ISBN

INSERT INTO livre(
    978-2-840-01961-9, '11.jpg', broché, refArticle, nomGenre, nomEditeur)
)

INSERT INTO genre(
    Transformation digitale
)

INSERT INTO editeur(
    Maxima Laurent du Mesnil
)

INSERT INTO auteur(
    id, Mignot, Océanne 
)

INSERT INTO article(
    ref, "La transformation digitale des entreprises - Principes, exemples, mise en oeuvre et impact social", "La transformation digitale : un sujet essentiel pour les entreprises... ce qui faut faire et pourquoi.

La transformation digitale (ou numérique) est une préoccupation de toutes les entreprises soucieuses de leur avenir, mais comment s'y prendre ? Comment les autres entreprises procèdent-elles ? Où en est la France dans ce domaine ?
Après avoir présenté les enjeux et les problématiques de la transformation digitale, le livre puise dans de nombreux exemples de réalisation (La Poste, L'Oréal, Air France, Starbucks, Darty, Danone, Orange, SNCF) pour dégager les principes et les méthodes qui doivent guider l'évolution en profondeur de l'entreprise, quel que soit son secteur d'activité, et quelle que soit sa taille, au risque de la voir abandonner toute compétitivité. "

INSERT INTO auteurLivre(
    id, idAuteur, ISBN

INSERT INTO livre(
    978-2-212-57079-3, '12.jpg', broché, refArticle, nomGenre, nomEditeur)
)

INSERT INTO genre(
   Transformation digitale
)

INSERT INTO editeur(
    Eyrolles
)

INSERT INTO auteur(
    id, Vivier, Emmanuel
)

INSERT INTO article(
    ref, "Le guide de la transformation digitale: La méthode en 6 chantiers pour réussir votre transformation !", "Face à la disruption causée par le numérique, la transformation digitale est devenue un sujet majeur de préoccupation et un enjeu stratégique pour toutes les organisations quelle que soit leur taille : business, marketing, ressources humaines, processus de production, système d'informations, datas... C'est pour répondre à ce défi que Vincent Ducrey et Emmanuel Vivier ont écrit Le Guide de la transformation digitale. Après plus de dix-huit ans à accompagner les grandes entreprises et organisations dans le numérique, ils présentent une méthode pédagogique et solide en six chantiers et cinq étapes pour penser et réussir la transformation digitale de votre organisation.

Que vous soyez un dirigeant, un directeur marketing, un DRH, un DSI, un directeur digital, un manager ou un collaborateur qui veut comprendre et maîtriser les enjeux stratégiques à venir, cet ouvrage a été pensé pour vous."

INSERT INTO auteurLivre(
    id, idAuteur, ISBN

INSERT INTO livre(
    978-2-100-80936-3, '13.jpg', broché, refArticle, nomGenre, nomEditeur)
)

INSERT INTO genre(
    Transformation digitale
)

INSERT INTO editeur(
    Dunod
)

INSERT INTO auteur(
    id, Legrenzi, Christophe 
)

INSERT INTO article(
    ref, "Pilotage du SI et de la transformation digitale - 4e éd. ", "Cet ouvrage s’adresse à tous les DSI, directeurs fonctionnels, responsables métiers ainsi qu’aux acteurs de l’évolution du SI et de la transformation digitale,  qu’ils soient architectes, urbanistes, consultants, Chief Digital Officers…
Cet ouvrage constitue un véritable guide pour tous ces acteurs :
– Il dresse un état des lieux et propose une analyse critique des tableaux de  bord les plus couramment utilisés.
– Il donne aux DSI et aux décideurs les moyens de réfléchir aux indicateurs  qu’ils utilisent au quotidien dans leur entreprise.
– Il expose les principes de construction des tableaux de bord et des bons  indicateurs de performances.
– Il met en garde contre les mauvaises pratiques en matière de gestion budgétaire et propose des pistes de solution.
– Il propose des exemples d’indicateurs pour piloter la transformation digitale.
– Il établit une analyse des bonnes et mauvaises pratiques du benchmarking.
– Il détaille tout l’intérêt des indicateurs qualitatifs proactifs, véritables  révélateurs de signaux faibles.
– Il fournit plusieurs approches pour le pilotage des projets et des fournisseurs.
– Il donne des conseils sur l’utilisation des tableaux de bord comme outils  opérationnels de communication factuels et puissants.
– Enfin il fournit des pistes de réflexion sur la gestion en temps de crise."

INSERT INTO auteurLivre(
    id, idAuteur, ISBN

INSERT INTO livre(
    978-2-212-55626-1, '14.jpg', broché, refArticle, nomGenre, nomEditeur)
)

INSERT INTO genre(
    Transformation digitale
)

INSERT INTO editeur(
    Ellipses
)

INSERT INTO auteur(
    id, Aubry, Mathilde 
)

INSERT INTO article(
    ref, "La transformation digitale en entreprise ", "Les livres comme les articles professionnels ou académiques traitant de la transformation numérique sont légion ces dernières années.

Pourquoi un ouvrage supplémentaire sur cette thématique ? Pour deux raisons majeures : tout d’abord, parce que l’introduction des technologies de l’information et de la communication sont à l’origine de changements rapides et en continu et qu’il n’est jamais inutile de faire une mise à jour. Ensuite parce que les thèmes aussi populaires, aussi « à la mode » que celui de la transformation numérique sont tellement traités, par tellement de personnes, que cela peut donner lieu à de la confusion ou, pire, à la diffusion de poncifs. Le regard des chercheurs, chacun dans leur spécialité, chacun sur un point très précis, permet de prendre un peu de recul par rapport à la masse d’informations disponibles et donc de déconstruire les préjugés existants.

L’objectif de l’ouvrage est donc de présenter et discuter les différents enjeux de cette transformation « digitale » pour les entreprises. Vous y trouverez trois types de questions/réponses : celles qui permettent de définir les termes un peu techniques du domaine, celles qui permettent de mettre en avant d’importants chiffres clefs et celles qui vont pouvoir transmettre des recommandations pour bénéficier pleinement de la transformation numérique encore en cours.  "

INSERT INTO auteurLivre(
    id, idAuteur, ISBN

INSERT INTO livre(
    978-2-368-90709-2, '15.jpg', broché, refArticle, nomGenre, nomEditeur)
)

INSERT INTO genre(
    Transformation digitale
)

INSERT INTO editeur(
    Le Passeur
)

INSERT INTO auteur(
    id, Babinet, Gilles 
)

INSERT INTO article(
    ref, "Transformation digitale : l'avènement des plateformes ", "Alors que la révolution digitale ne fait que commencer, les entreprises traditionnelles et les institutions publiques paraissent n’avoir qu’une vague compréhension des bouleversements qu’elles vont devoir amorcer pour rester compétitives. Beaucoup envisagent à tort cette métamorphose comme une adaptation progressive et douce. Or les règles ont radicalement changé. En réalité, l’essence même des structures est touchée : l’horizontalisation du monde, l’accélération des rythmes d’innovation, conséquence d’un monde globalisé et connecté, l’impact des « learning-machines » sont quelques-uns des facteurs qui pourraient induire ce bouleversement. Ce livre, issu d’entretiens avec des personnalités du management de start-up internationales, décrit ce que pourrait être l’organisation des entreprises de demain. Une synthèse claire et accessible pour comprendre les enjeux de cette transformation digitale dans tous les secteurs de nos sociétés – et donc de nos existences. "

INSERT INTO auteurLivre(
    id, idAuteur, ISBN


--drop database fil_rouge;