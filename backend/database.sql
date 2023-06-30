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
INSERT INTO sites (name, street, postal_code, city, description, email, phone_number, website, image, latitude, longitude, category_id) VALUES ("toto", "2 rue des pignons", "12345", "Pignons-sur-rue", "C'est super!", "toto@email.com", "1234567890", "http://localhost", "https://placekitten.com/200/300", "24.24", "24.24", 1);
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