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
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO sites (
    name,
    street,
    postal_code,
    city,
    description,
    email,
    phone_number,
    website,
    image,
    latitude,
    longitude,
    category_id
  )
VALUES ("Basilique Notre-Dame", "2 rue du Marché", "03260", "Saint-Germain-des-Fossés", "La basilique Notre-Dame fut construite dans les années 1934-1935 dans le style Art déco, dans le centre, pour mieux desservir la population à cette époque de développement de la ville. Notre-Dame Basilica was built in the years 1934-1935 in the Art Deco style, in the centre, to better serve the population at that time of the city's development.", "mairie-saint-germain-des-fosses@wanadoo.fr", "+33 4 70 59 60 45", "https://www.allier-auvergne-tourisme.com/art-nouveau-ou-art-deco/xxe-siecle/saint-germain-des-fosses/basilique-notre-dame/5521758", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/80/23/9181008-diaporama.jpg", "46.203821", "3.432278", 1),
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
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO accommodation (
    name,
    street,
    postal_code,
    city,
    description,
    email,
    phone_number,
    website,
    image,
    latitude,
    longitude
  )
VALUES (
    'Vichy Résidencia',
    '5 square Albert 1er',
    '03200',
    'Vichy',
    'Résidence de tourisme',
    'vichyimmo@orange.fr',
    '+33 4 70 32 22 22',
    'https://www.vichy-residencia.com/',
    'https://images.unsplash.com/photo-1605266764154-0ff8f354088c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
    '46.121',
    '3.4201'
  ),
  (
    'Résidence Saint-Dizier',
    '7 rue d''Allier',
    '03200',
    'Vichy',
    'Studio dans une belle résidence de 1930 à 2 minutes à pied du Parc des Sources et de l''Opéra dans le quartier historique du Vieux Vichy. Studio in a beautiful residence of 1930 at 2 minutes walk from the Parc des Sources and the Opera in the historic district of Vieux Vichy.',
    'fanrom@orange.fr',
    '+33 6 84 71 34 66',
    'https://www.allier-auvergne-tourisme.com/hebergement-locatif/vichy/residence-saint-dizier/5784311',
    'https://images.unsplash.com/photo-1570129477492-45c003edd2be?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    '46.121355',
    '3.421156'
  ),
  (
    'Au Trèfle à Quatre Feuilles',
    '21 Rue de Vichy',
    '03250',
    'Le Mayet-de-Montagne',
    'De nombreuses activités a proximité; pêche,chasse, lac aménagé, équitation,randonnées,parcours endurance,\ren hivers station de ski,, Numerous activities nearby; fishing, hunting, lake, horse riding, hiking, endurance course,\rin ski resort winters,',
    'contact@gites-de-france-allier.com',
    '+ 33 4 82 75 68 55',
    'http://www.gites-de-france-allier.com/',
    'https://images.unsplash.com/photo-1464146072230-91cabc968266?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    '46.068718',
    '3.657062'
  ),
  (
    'Sous les toiles de PauTiLou',
    'Lieu - Dit Le rez Buriaud',
    '03300',
    'Molles',
    'Logements insolites (tentes Sibley type "tipi") à la ferme, location une ou plusieurs nuitées dans un cadre idyllique en pleine nature avec vue sur la Montagne Bourbonnaise, aux portes de Vichy (Auvergne Rhône Alpes). Unusual lodgings (Sibley tents type "tipi") at the farm, renting one or more nights in an idyllic setting in the middle of nature with a view on the Bourbonnaise Mountain, at the gates of Vichy (Auvergne Rhône Alpes).',
    'souslestoilesdepautilou@gmail.com',
    '+33 6 13 20 58 30',
    'https://souslestoilesdepau.wixsite.com/sous-les-toiles-de-p',
    'https://images.unsplash.com/photo-1624254495476-db6cc8b77e98?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80',
    '46.104137',
    '3.541977'
  ),
  (
    'Meublé Grandjean - Le Sapey',
    'Le Sapey',
    '03250',
    'Saint-Nicolas-des-Biefs',
    'Belle ferme pour les amoureux de la nature dans un hameau isolé de 3 maisons, capacité 11 personnes, grand jardin fleuri privatif, jacuzzi. Beautiful farmhouse for nature lovers in a secluded hamlet of 3 houses, capacity 11 people, large private flowered garden, jacuzzi.',
    'baudouin.grandjean@gmail.com',
    '+33 6 71 11 37 08',
    'https://www.allier-auvergne-tourisme.com/hebergement-locatif/saint-nicolas-des-biefs/meuble-grandjean-le-sapey/4682482',
    'https://www.lesgitesdusapey.fr/wp-content/uploads/2021/09/IMG-6932-scaled.jpg',
    '46.024707',
    '3.800437'
  ),
  (
    'Gite Maison de la Besbre',
    '1 Rue de la chaume',
    '03220',
    'Jaligny-sur-Besbre',
    'Maison de vacances indépendante de 180 m² au coeur du village de Jaligny-sur-Besbre avec piscine au bord de la rivière Besbre. Independent vacation house of 180 m² in the heart of the village of Jaligny-sur-Besbre with swimming pool on the Besbre river.',
    'jmtissier1@orange.fr',
    '+33 4 70 42 25 07',
    'https://www.allier-auvergne-tourisme.com/hebergement-locatif/jaligny-sur-besbre/gite-maison-de-la-besbre/5905500',
    'https://static.apidae-tourisme.com/filestore/objets-touristiques/images/254/158/15834878-diaporama.jpg',
    '46.379331',
    '3.591613'
  ),
  (
    'Hôtel Le Chalet Montégut',
    '26 et 28 route du Chalet, D 945',
    '03000',
    'Coulandon',
    'En plein cœur de la nature bourbonnaise, dans un parc arboré de 4 hectares, laissez-vous surprendre par le charme d''une ancienne demeure, rénovée pour votre plus grand confort, et vivez une expérience unique dans un environnement atypique. In the heart of the Bourbonnais nature, in a park of 4 hectares, let yourself be surprised by the charm of an old house, renovated for your greatest comfort, and live a unique experience in an atypical environment.',
    'contact@chalet-montegut.com',
    '+33 4 70 46 00 66',
    'https://www.chalet-montegut.com/',
    'https://www.chalet-montegut.com/wp-content/uploads/2022/07/hotel-allier-piscine-2-850x435.jpg',
    '46.553536',
    '3.247571'
  ),
  (
    'Gîte du Couturon',
    'lieu dit le couturon',
    '03250',
    'Le Mayet-de-Montagne',
    'Situé en Montagne Bourbonnaise. Labelisé Accueil Vélo. Hébergement qualifié Rando Allier. Located in the Bourbonnaise Mountains. Label Accueil Vélo. Lodging qualified Rando Allier.',
    'couturon03@gmail.com',
    '+33 6 64 85 06 29',
    'http://www.le-couturon.fr/',
    'http://www.gite-le-couturon.fr/wp-content/uploads/2018/01/Slider-photo-1-Gite-Le-couturon-Allier.jpg',
    '46.077919',
    '3.69324'
  ),
  (
    'Gîte Les Plessers',
    'Lieu-dit Le Plaix',
    '03360',
    'Meaulne-Vitray',
    'Proche de la forêt de Tronçais, cette ancienne ferme possède une terrasse avec vue panoramique sur la campagne et d''un jardin. Dans une ambiance "maison de famille", la propriétaire a apporté un soin particulier à la décoration, avec mobilier ancien.',
    'bhalle@hotmail.fr',
    '+33 4 70 08 66 73',
    'https://www.allier-auvergne-tourisme.com/hebergement-locatif/meaulne-vitray/gite-les-plessers/5093905',
    'https://static.apidae-tourisme.com/filestore/objets-touristiques/images/18/182/7190034-diaporama.png',
    '46.5847',
    '2.645247'
  ),
  (
    'Gîte Chalet du Plaix',
    '365 route du Plaix',
    '03360',
    'Meaulne-Vitray',
    'Charmant meublé situé dans un environnement arboré et verdoyant, pour profiter du calme de notre belle campagne bourbonnaise. Situé à 300 mètres d''altitude, il offre une vue exceptionnelle et de remarquables couchers de soleil.',
    'agnes.gangneron@gmail.com, philippe.gangneron@gmail.com',
    '+33 6 03 01 48 98',
    'https://www.valleecoeurdefrance.fr/offres/gite-chalet-du-plaix-meaulne-fr-3849066/',
    'https://api.cloudly.space/resize/clip/1900/1080/75/aHR0cHM6Ly9zdGF0aWMuYXBpZGFlLXRvdXJpc21lLmNvbS9maWxlc3RvcmUvb2JqZXRzLXRvdXJpc3RpcXVlcy9pbWFnZXMvMTE3Lzk3LzE1NzUzNTg5LmpwZw==/image.jpg',
    '46.58495',
    '2.644551'
  ),
  (
    'Hôtel Trianon',
    '9 rue Desbrest',
    '03200',
    'Vichy',
    'Cet hôtel rénové, situé au coeur du centre-ville dans une rue calme est à proximité de la gare, des parcs, du palais des congrès, de l''opéra et des thermes. Il vous offre un confort douillet et des suites familiales de 4 à 6 personnes. Soirée étape.',
    'contact@hoteltrianonvichy.fr',
    '+33 4 70 97 95 96',
    'https://www.hoteltrianonvichy.fr/',
    'https://www.hoteltrianonvichy.fr/sites/default/files/2022-03/trianon_4.png',
    '46.126955',
    '3.424268'
  );
  
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
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO restaurants (name, street, postal_code, city, description, email, phone_number, website, image, latitude, longitude) VALUES
 ("Restaurant La Chaumière",
  "1 rue de l'église",
   "03390",
    "Blomard",
     "Le restaurant 'La Chaumière' situé au coeur du bocage Bourbonnais vous proposant une cuisine traditionnelle dans un cadre chaleureux et convivial. Accueil de groupes, repas de famille, baptême, anniversaire...",
      " silvereanom03@gmail.com",
       "+33 4 70 06 68 92",
        "https://www.restaurantlachaumiere03.fr/",
         "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/0/220/16440320-diaporama.jpg",
          "46.289018", "2.976788"),

          ("Poulette",
  "4 Rue Faubourg paluet",
   "03500",
    "Saint-Pourçain-sur-Sioule",
     "Fast good de produits frais et locaux. Burgers, viandes et poulets grillés et desserts gourmants.",
      "poulettebourbon@gmail.com",
       "+33 4 63 07 17 99",
        "https://www.valdesioule.com/restaurants/poulette/",
         "https://www.valdesioule.com/wp-content/uploads/wpetourisme/17210206-diaporama-1200x1200.jpg",
          "46.306143", "3.296333"),

           ("Le fournil de Tara",
  "119 avenue Gilbert Roux",
   "03300",
    "Cusset",
     "Fast good de produits frais .",
      "poulettebourbon@gmail.com",
       "+33 4 70 96 99 47",
        "https://www.allier-auvergne-tourisme.com/commerce-et-service/cusset/le-fournil-de-tara/5481350",
         "https://lh3.googleusercontent.com/p/AF1QipM_4VPYIRJp2o3xOMQ2qDsMrfZQFA0A3qg_lcAs=s680-w680-h510",
          "46.137493", "3.434943"),

           ("Restaurant Chez Chaumat",
  "Place Péron",
   "03350",
    "Cérilly",
     "Hôtel-restaurant situé dans le bourg de Cérilly à proximité de la Forêt de Tronçais, proposant des spécialités Bourbonnaises.",
      "chezchaumat@alicepro.fr",
       "+33 4 70 67 52 21",
        "http://www.chezchaumat.com/",
         "https://medias.logishotels.com/property-images/3093/restaurant/retro/grand/hotel-chez-chaumat-restaurant-cerilly-159227.jpg",
          "46.617555", "2.820446"),

          ("Chez Tom",
  "35 rue Lucas - Centre commercial des 4 chemins",
   "03200 ",
    "Vichy",
     "Sandwicherie où vous retrouverez des produits chauds et froids, salés et sucrés, à consommer sur place ou à emporter.",
      "fluckiger.thomas@gmail.com",
       "+33 6 65 26 61 33",
        "https://www.allier-auvergne-tourisme.com/restauration-rapide/vichy/chez-tom/5753710",
         "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/158/77/16141726-diaporama.jpg",
          "46.126525", "3.422494"),

           ("Restaurant Le Maroc",
  "69 rue de Paris",
   "03200 ",
    "Vichy",
     "Sandwicherie où vous retrouverez des produits chauds et froids, salés et sucrés, à consommer sur place ou à emporter.",
      "fluckiger.thomas@gmail.com",
       "+33 4 70 96 25 22",
        "https://www.allier-auvergne-tourisme.com/restaurant-de-specialites-etrangeres/vichy/le-maroc/4823037",
         "https://www.allier-hotels-restaurants.com/wp-content/uploads/2021/01/a.png",
          "46.126954", "3.429383"),

           ("Miss Clairon côté cave et côté fourneaux",
  "3 Impasse de La Levée",
   "03450 ",
    "Ébreuil",
     "Venez croquer un morceau de Bretagne dans la quiétude de notre jardin. Dépaysement assuré !",
      "missclairon@orange.fr",
       "+33 6 48 38 46 37",
        "https://www.allier-auvergne-tourisme.com/creperie/ebreuil/miss-clairon-cote-cave-et-cote-fourneaux/5611902",
         "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/101/105/9202021-diaporama.jpg",
          "46.116051", "3.091857"),

          ("Hôtel-restaurant Le Chalet Montégut",
  "26 et 28 route du Chalet, D 945",
   "03000  ",
    "Coulandon",
     "En plein cœur de la nature bourbonnaise, dans un parc arboré de 4 hectares, laissez-vous surprendre par le charme d'une ancienne demeure, rénovée pour votre plus grand confort, et vivez une expérience unique dans un environnement atypique.",
      "contact@chalet-montegut.com",
       "+33 4 70 46 00 66",
        "https://www.chalet-montegut.com/",
         "https://www.chalet-montegut.com/wp-content/uploads/2023/03/repas-famille-2300x850.jpg",
          "46.553536", "3.247571"),


          ("Aux gens bons",
  "Le bourg",
   "03220  ",
    "Thionne",
     "Aménagé dans une ancienne école, notre établissement est un bar - restaurant qui propose une cuisine maison, élaborée à partir de produits locaux. Vendredi midi et soir, venez déguster nos pizzas maison sur place ou à emporter.",
      " auxgensbons03@gmail.com",
       "+33 6 95 73 03 62",
        "https://www.allier-auvergne-tourisme.com/brasserie/restaurant-traditionnel/restaurant-bistronomique/thionne/aux-gens-bons/6014948",
         "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/15/74/12339727-diaporama.png",
          "46.40474", "3.573715"),

          ("Le Dôme",
  "52 boulevard Gambetta",
   "03200  ",
    "Vichy",
     "Cuisine éclectique pour ce bar-brasserie orné de peintures latino-américaines proposant de la musique en live.",
      "auxgensbons03@gmail.com",
       "+33 4 70 98 23 58",
        "https://www.allier-auvergne-tourisme.com/brasserie/vichy/le-dome/5450353",
         "https://lh3.googleusercontent.com/p/AF1QipMEsGiUFinPVGvF1mHwuPEE5R4HXcARvrY-PQhV=s680-w680-h510",
          "46.127174", "3.429518"),

          ("Restaurant du Nouvel Hôtel",
  "29 place de la République",
   "03130  ",
    "Le Donjon",
     "Le Nouvel Hôtel, situé entre Lapalisse et Digoin, est installé dans un cadre agréable où il fait bon se ressourcer, que ce soit pour un séjour touristique ou une soirée étape.",
      "therese.henry@wanadoo.fr",
       "+33 4 70 99 53 66",
        "https://www.nouvelhotel03.com/",
         "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/206/193/16368078-diaporama.jpg",
          "46.35066", "3.794348"),


          ("Le Bungalow",
  "1 quai d'Allier",
   "03200  ",
    "Vichy",
     "Le Bungalow, restaurant - bar à vins, vous propose une restauration raffinée et savoureuse autour du vin.",
      "lebungalow@orange.fr",
       "+33 4 70 98 51 93",
        "http://www.lebungalow.fr/",
         "https://lh3.googleusercontent.com/p/AF1QipPsHEcjPIhKlHJ8ollEiBghKUnJF5jbpwlTMVMu=s680-w680-h510",
          "46.126388", "3.41515");

CREATE TABLE events (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name VARCHAR(80) NOT NULL,
  date DATETIME,
  image VARCHAR(255),
  latitude DECIMAL(10, 8),
  longitude DECIMAL(10, 8)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO events (name, date, image, latitude, longitude) VALUES 
("Visite guidée : Histoire d'eaux, Vichy : 2 000 ans de thermalisme", "2023-06-29", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/185/202/12962489.jpg", "46.125031", "3.41919"),
("Second Empire, Belle Époque, Âge d'Or de Vichy", "2023-17-09", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/15/93/12475663.jpg", "46.124944", "3.419147"),
("Visite guidée : Vichy, Capitale de l'État français 40/44", "2023-07-29", "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/130/215/7329666.jpg", "46.124944", "3.419147");

CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  firstname VARCHAR(80) NOT NULL,
  lastname VARCHAR(255),
  email VARCHAR(255) UNIQUE NOT NULL,
  hashedPassword VARCHAR(255) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO users (firstname, lastname, email, hashedPassword)
VALUES (
    'John',
    'Doe',
    'john.doe@example.com',
    "$argon2id$v=19$m=16,t=2,p=1$emVmZXpmemZlemVmZWR6ZXplZg$rqZkhxu5YbqCGHPNrjJZpQ"
  ),
(
    'Valeriy',
    'Appius',
    'valeriy.ppius@example.com',
    '$argon2id$v=19$m=16,t=2,p=1$emVmemVmemZlemZ6ZnpmZQ$eSetR6KPUNAGW+q+wDadcw'
  ),
(
    'Ralf',
    'Geronimo',
    'ralf.geronimo@example.com',
    '$argon2id$v=19$m=16,t=2,p=1$emVmemVmemZlemZ6ZnpmZXphZGF6ZGQ$a0bg5DZB6H6v3jjQC81DXg'
  ),
(
    'Maria',
    'Iskandar',
    'maria.iskandar@example.com',
    '$argon2id$v=19$m=16,t=2,p=1$emVmemVmemZlenplZHpkZnpmemZlemFkYXpkZA$V1qAnJDyMuuWG7g9yoGYXA'
  ),
(
    'Jane',
    'Doe',
    'jane.doe@example.com',
    '$argon2id$v=19$m=16,t=2,p=1$emVmemVmemZlenplZHpkZGZ6ZnpmZXphZGF6ZGQ$VCzq45PL9t8khtc44Kk5iw'
  ),
(
    'Johanna',
    'Martino',
    'johanna.martino@example.com',
    '$argon2id$v=19$m=16,t=2,p=1$emVmemVmemVmemZlenplZHpkZGZ6ZnpmZXphZGF6ZGQ$UKaGZ9hGFn/S5SBQDMe/Uw'
  );

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
