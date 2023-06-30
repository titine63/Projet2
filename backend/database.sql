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
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO category (title)
VALUES ("Site culturel"),
  ("Site sportif, récréatif et de loisirs"),
  ("Site naturel");
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
VALUES (
    "toto",
    "2 rue des pignons",
    "12345",
    "Pignons-sur-rue",
    "C'est super!",
    "toto@email.com",
    "1234567890",
    "http://localhost",
    "https://placekitten.com/200/300",
    "24.24",
    "24.24",
    1
  );
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
INSERT INTO restaurants (
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
    "tata",
    "2 rue des pignons",
    "12345",
    "Pignons-sur-rue",
    "C' est super ! ",
    " tata @email.com ",
    " 1234567890 ",
    " https: / / placekitten.com / 200 / 300 ",
    " https: / / placekitten.com / 200 / 300 ",
    " 26.2424 ",
    " 22.2424 "
  );
CREATE TABLE events (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name VARCHAR(80) NOT NULL,
  date DATETIME,
  image VARCHAR(255),
  latitude DECIMAL(10, 8),
  longitude DECIMAL(10, 8)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO events (name, date, image, latitude, longitude)
VALUES (
    " teuf ",
    "2023-06-29 00:00:00",
    " https: / / placekitten.com / 200 / 300 ",
    " 27.2424 ",
    " 21.2424 "
  );
CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  firstname VARCHAR(80) NOT NULL,
  lastname VARCHAR(255),
  email VARCHAR(255) UNIQUE NOT NULL,
  hashedPassword VARCHAR(255) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
INSERT INTO users (firstname, lastname, email, hashedPassword)
VALUES (
    " mec ",
    " inconnu ",
    " inconnu @anonyme.com ",
    " 183454835465 "
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