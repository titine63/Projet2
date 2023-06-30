DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS sites;
DROP TABLE IF EXISTS accommodation;
DROP TABLE IF EXISTS restaurants;
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS map;

CREATE TABLE category (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    title VARCHAR(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO category (title) VALUES ("Site culturel"), ("Site sportif, récréatif et de loisirs"), ("Site naturel");

CREATE TABLE sites (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(80) NOT NULL,
    street VARCHAR(255),
    postal_code VARCHAR(5),
    city VARCHAR(80),
    description TEXT,
    email VARCHAR(80),
    phone_number VARCHAR(20),
    website VARCHAR(255),
    image VARCHAR(255),
    latitude DECIMAL(10, 8),
    longitude DECIMAL(10, 8),
    category_id INT NOT NULL,
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO sites (name, street, postal_code, city, description, email, phone_number, website, image, latitude, longitude, category_id) VALUES 
("Basilique Notre-Dame", "2 rue du Marché", "03260", "Saint-Germain-des-Fossés", "La basilique Notre-Dame fut construite dans les années 1934-1935 dans le style Art déco, dans le centre, pour mieux desservir la population à cette époque de développement de la ville. Notre-Dame Basilica was built in the years 1934-1935 in the Art Deco style, in the centre, to better serve the population at that time of the city's development.", "mairie-saint-germain-des-fosses@wanadoo.fr", "+33 4 70 59 60 45", "https://www.allier-auvergne-tourisme.com/art-nouveau-ou-art-deco/xxe-siecle/saint-germain-des-fosses/basilique-notre-dame/5521758", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/80/23/9181008-diaporama.jpg", "46.203821", "3.432278", 1),
("Randonnée Morel - PR n°27", "Mairie Rue de la Gare", "03120", "Arfeuilles", "Au départ du bourg, cette randonnée vous emmène à la découverte de quelques-uns des nombreux hameaux d'Arfeuilles. Starting from the village, this hike takes you to discover some of the many hamlets of Arfeuilles.", "contact@vichydestinations.fr", "+33 4 70 59 38 40", "https://vichymonamour.fr/offres/morel-pr-n27-arfeuilles-fr-3387226/", "https://api.cloudly.space/resize/clip/1900/1080/75/aHR0cHM6Ly9zdGF0aWMuYXBpZGFlLXRvdXJpc21lLmNvbS9maWxlc3RvcmUvb2JqZXRzLXRvdXJpc3RpcXVlcy9pbWFnZXMvMjM3LzE1OS8xMzA4MjYwNS5qcGc=/image.jpg", "46.157", "3.7262", 2),
("Château de Montaiguet-en-Forez", "Rue Ernest Préveraud", "03130", "Montaiguët-en-Forez", "Visite libre des extérieurs. Ce château XVe est un petit château fort martial d'aspect imposant. Free visit of the exteriors. This 15th century castle is a small martial fort with an imposing appearance.", "francoizdessert@orange.fr", "+33 4 70 55 20 01", "https://www.allier-auvergne-tourisme.com/monument-historique-inscrit/gothique/xve-siecle/montaiguet-en-forez/chateau-de-montaiguet-en-forez/4685410", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/30/233/11266334-diaporama.jpg", "46.269408", "3.801902", 1),
("Panorama - Village de Saint-Bonnet de Rochefort", "Le Bourg", "03800", "Saint-Bonnet-de-Rochefort", "Village perché. Perched village.", "accueil@vdstourisme.com, mairie-st-bonnet-rochefort@orange.fr", "+33 4 70 58 50 67", "https://www.allier-auvergne-tourisme.com/point-de-vue/saint-bonnet-de-rochefort/panorama-village-de-saint-bonnet-de-rochefort/6047442", "https://www.saintbonnetderochefort.fr/userfile/img-template-maker/diaporama-12/haute/1626364751_A7-166-055.JPG", "46.147729", "3.136874", 3),
("PÉPIT 03 : S'inspirer des belles rives...", "Avenue de la République dans le Parc", "03700", "Bellerive-sur-Allier", "Vous êtes actuellement au départ d'un circuit PÉPIT. Téléchargez l'application PÉPIT 03 et partez à la recherche du trésor ! Découvrez le patrimoine de l'Allier en famille de façon ludique et pédagogique avec PÉPIT ! You are currently at the start of a PÉPIT tour. Download the PÉPIT 03 application and go on a treasure hunt! Discover the heritage of the Allier with your family in a fun and educational way with PÉPIT!", "contact@vichydestinations.fr", "+33 4 70 98 71 94", "https://www.allier-auvergne-tourisme.com/equipement/bellerive-sur-allier/pepit-03-s-inspirer-des-belles-rives-/6340623", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/93/68/15549533-diaporama.png", "46.117504", "3.415736", 2),
("Square du Dragon", "D 136 - Entrée de Noyant en venant de Moulins", "03210", "Noyant-d'Allier", "Le square du Dragon tire son nom de l'importante sculpture de dragon qui le domine. Dragon Square takes its name from the large dragon sculpture that dominates it.", "mairie.noyant@wanadoo.fr", "+33 4 70 47 21 14", "https://www.allier-auvergne-tourisme.com/patrimoine-culturel/noyant-d-allier/square-du-dragon/5441309", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/7/24/8853511-diaporama.jpg", "46.487983", "3.133519", 1),
("Théâtre municipal", "13 rue Candie", "03000", "Moulins-sur-Allier", "Le théâtre municipal de Moulins est une construction néo-classique de 1847. La salle accueille de nombreuses pièces de théâtre, des spectacles de variétés, des opéras, des spectacles jeune public. The municipal theater of Moulins is a neo-classical building from 1847. The hall hosts numerous plays, variety shows, operas, and shows for young audiences.", "alexia.marsoni@ville-moulins.fr", "+33 4 70 48 01 05", "http://www.ville-moulins.fr/", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/215/235/9235415-diaporama.jpg", "46.564704", "3.333966", 2),
("Circuit Le bois de Champeaux", "Mairie", "03420", "Ronnet", "Une belle promenade entre bois et bocage vous attend. A beautiful walk between woods and hedgerows awaits you.", "contact@valleecoeurdefrance.fr", "+33 4 70 05 11 44", "https://www.allier-auvergne-tourisme.com/equipement/ronnet/circuit-le-bois-de-champeaux/5731660", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/55/102/9397815-diaporama.jpg", "46.205672", "2.700609", 2),
("Circuit Le sentier de l'Aumance", "Quais de l'Aumance", "03190", "Hérisson", "Ce sentier conduit vers des pépites culturelles telle que l'Église Saint-Pierre de Châteloy. This trail leads to cultural nuggets such as St Peter's Church in Châteloy.", "contact@valleecoeurdefrance.fr", "+33 4 70 05 11 44", "https://www.allier-auvergne-tourisme.com/equipement/herisson/circuit-le-sentier-de-l-aumance/5300849", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/49/235/6286129-diaporama.jpg", "46.507501", "2.712195", 2),
("Kiosque du Parc des Bourins", "Avenue de France", "03200", "Vichy", "Ce kiosque à musique, construit en 1912 est un exemple d'architecture de fête. Situé à l'origine dans le parc des sources, près du café 'La Restauration', il fut transporté en 1928 dans le parc des Bourins. This bandstand, built in 1912, is an example of festive architecture. Originally located in the Parc des Sources, near the café 'La Restauration', it was moved to the Parc des Bourins in 1928.", "contact@vichydestinations.fr", "+33 4 70 98 71 94", "https://www.allier-auvergne-tourisme.com/monument-historique-inscrit/xxe-siecle/vichy/kiosque-du-parc-des-bourins/5531814", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/127/206/7851647-diaporama.jpg", "46.117684", "3.429809", 1),
("Randonnée Le Sentier du Renard - PR n°51", "Office de Tourisme de Billy", "03260", "Billy", "Cet itinéraire vous guide à la découverte du passé médiéval de Billy, à travers les anciennes terres de ses seigneurs. This itinerary guides you to discover Billy's medieval past, through the former lands of his lords.", "billy@vichydestinations.fr", "+33 4 70 98 71 94", "https://www.allier-auvergne-tourisme.com/equipement/billy/le-sentier-du-renard-pr-n-51/5297129", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/82/189/13090130-diaporama.jpg", "46.236523", "3.429", 2),
("L'Escabille", "Moulin Châtel", "03250", "Châtel-Montagne", "Oeuvre Land'art au cœur de la Montagne bourbonnaise. Ouverte sur les paysages magnifique de Châtel-Montagne, cette étrange cabane s'enroule petit à petit sur elle-même. Land'art work in the heart of the Bourbonnaise Mountain. Open on the magnificent landscapes of Châtel-Montagne, this strange hut rolls up little by little on itself.", "chatel-montagne@vichydestinations.fr", "+33 4 70 59 37 89", "https://www.allier-auvergne-tourisme.com/patrimoine-culturel/chatel-montagne/l-escabille/5777852", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/83/231/13100883-diaporama.jpg", "46.111996", "3.665431", 1),
("Randonnée Le vieux moulin - PR n°40", "Face à la SPA", "03700", "Brugheas", "Entre la forêt de la Boucharde et la forêt de Montpensier, cette agréable randonnée vous amène dans différents hameaux de Brugheas. Between the Boucharde forest and the Montpensier forest, this pleasant hike takes you to different hamlets of Brugheas.", null, null, "https://www.allier-auvergne-tourisme.com/equipement/brugheas/le-vieux-moulin-pr-n-40/5293993", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/84/107/13069140-diaporama.jpg", "46.07", "3.3806", 2),
("Randonnée-Circuit Beauregard", "Place des Tilleuls", "03000", "Montilly", "Le départ du sentier vous permettra d'apprécier l'église Saint-Pierre de Montilly, construite à l'époque romane. The start of the trail will allow you to appreciate the Saint-Pierre de Montilly church, built in the Romanesque period.", "s.durix@agglo-moulins.fr", "+33 4 70 48 14 34", "https://fr.wikiloc.com/itineraires-randonnee/montilly-circuit-beauregard-51546205", "https://monbourbonnais.com/wp-content/uploads/2018/03/Montilly-laug%C3%A8res2.jpg", "46.611352", "3.250599", 2),
("Étang de Sault", "Sault", "03410", "Prémilhat", "Étang à proximité immédiate de Montluçon. Pêche avec carte majeure, journée, mineure, découverte, vacances. Deux postes pour personnes à mobilité réduite. Pond in the immediate vicinity of Montluçon. Fishing with major card, day, minor, discovery, holidays. Two posts for people with reduced mobility.", "mairie-premilhat@wanadoo.fr", "+33 4 70 51 50 03", "https://www.allier-auvergne-tourisme.com/equipement/premilhat/etang-de-sault/4709294", "http://img.over-blog-kiwi.com/0/67/37/03/20150710/ob_52b35d_caniculeetangsault6juillet2015bandeau1.jpg", "46.323664", "2.555763", 2),
("Randonnée-PR 15 : Circuit de nature Marigny", "Place de la Mairie", "03210", "Marigny", "Ce petit circuit est une balade depuis l'église classée MH le long des haies bocagères au travers de ce territoire d'élevage et de cultures, empreint de belles pierres et d'histoire, en passant par le château de Charnes, près de la forêt de Bagnolet. This small circuit is a stroll from the church classified MH along the hedges through this territory of breeding and crops, marked by beautiful stones and history, through the castle of Charnes, near the forest of Bagnolet.", "bienvenue@moulins-tourisme.com", "+33 4 70 44 14 14", "https://www.allier-auvergne-tourisme.com/equipement/marigny/pr-15-circuit-de-nature-marigny/6487213", "https://www.visorando.com/images/inter/m-beau-chemin-ombrage-vers-l-est-visorando-264210.jpg", "46.58201", "3.209222", 2),
("Église Saint-Martin", "Le Bourg", "03350", "Le Vilhain", "Visite libre sur rendez-vous. Le transept, la nef et les bas-côtés de cet édifice datent du XIIe siècle et l'abside du XIVe siècle.Free visit by appointment. The transept, the nave and the aisles of this building date from the 12th century and the apse from the 14th century.", "mairie-le-vilhain@wanadoo.fr", "+33 4 70 07 54 53", "https://www.allier-auvergne-tourisme.com/monument-historique-inscrit/gothique/roman/le-vilhain/eglise-saint-martin/4685520", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/104/211/2216808-diaporama.jpg", "46.530484", "2.833262", 1);


CREATE TABLE accommodation (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(80) NOT NULL,
    street VARCHAR(255),
    postal_code VARCHAR(5),
    city VARCHAR(80),
    description TEXT,
    email VARCHAR(80),
    phone_number VARCHAR(20),
    website VARCHAR(255),
    image VARCHAR(255),
    latitude DECIMAL(10, 8),
    longitude DECIMAL(10, 8)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO accommodation (name, street, postal_code, city, description, email, phone_number, website, image, latitude, longitude) VALUES ("titi", "2 rue des pignons", "12345", "Pignons-sur-rue", "C'est super!", "titi@email.com", "1234567890", "https://placekitten.com/200/300", "https://placekitten.com/200/300", "25.24", "23.24");

CREATE TABLE restaurants (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(80) NOT NULL,
    street VARCHAR(255),
    postal_code VARCHAR(5),
    city VARCHAR(80),
    description TEXT,
    email VARCHAR(80),
    phone_number VARCHAR(20),
    website VARCHAR(255),
    image VARCHAR(255),
    latitude DECIMAL(10, 8),
    longitude DECIMAL(10, 8)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO restaurants (name, street, postal_code, city, description, email, phone_number, website, image, latitude, longitude) VALUES ("tata", "2 rue des pignons", "12345", "Pignons-sur-rue", "C'est super!", "tata@email.com", "1234567890", "https://placekitten.com/200/300", "https://placekitten.com/200/300", "26.2424", "22.2424");

CREATE TABLE events (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(80) NOT NULL,
    date DATETIME,
    image VARCHAR(255),
    latitude DECIMAL(10, 8),
    longitude DECIMAL(10, 8)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO events (name, date, image, latitude, longitude) VALUES ("teuf", "2023-06-29", "https://placekitten.com/200/300", "27.2424", "21.2424");

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    firstname VARCHAR(80) NOT NULL,
    lastname VARCHAR(255),
    email VARCHAR(255) UNIQUE NOT NULL,
    hashedPassword VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO users (firstname, lastname, email, hashedPassword) VALUES ("mec", "inconnu", "inconnu@anonyme.com", "183454835465");

CREATE TABLE map (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(255),
    latitude DECIMAL(10, 8),
    longitude DECIMAL(10, 8),
    sites_id INT NOT NULL,
    restaurants_id INT NOT NULL,
    accommodation_id INT NOT NULL,
    events_id INT NOT NULL,
    users_id INT NOT NULL,
    CONSTRAINT fk_sites FOREIGN KEY (sites_id) REFERENCES sites(id),
    CONSTRAINT fk_restaurants FOREIGN KEY (restaurants_id) REFERENCES restaurants(id),
    CONSTRAINT fk_accommodation FOREIGN KEY (accommodation_id) REFERENCES accommodation(id),
    CONSTRAINT fk_events FOREIGN KEY (events_id) REFERENCES events(id),
    CONSTRAINT fk_users FOREIGN KEY (users_id) REFERENCES users(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;