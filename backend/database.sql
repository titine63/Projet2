DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS sites;
DROP TABLE IF EXISTS accommodation;
DROP TABLE IF EXISTS restaurants;
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS map;
​
CREATE TABLE category (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    title VARCHAR(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
​
INSERT INTO category (title) VALUES ("Site culturel"), ("Site sportif, récréatif et de loisirs"), ("Site naturel");
​
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
​
INSERT INTO sites (name, street, postal_code, city, description, email, phone_number, website, image, latitude, longitude, category_id) VALUES ("toto", "2 rue des pignons", "12345", "Pignons-sur-rue", "C'est super!", "toto@email.com", "1234567890", "http://localhost", "https://placekitten.com/200/300", "24.24", "24.24", 1);
​
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
​
INSERT INTO accommodation (name, street, postal_code, city, description, email, phone_number, website, image, latitude, longitude) VALUES ("titi", "2 rue des pignons", "12345", "Pignons-sur-rue", "C'est super!", "titi@email.com", "1234567890", "https://placekitten.com/200/300", "https://placekitten.com/200/300", "25.24", "23.24");
​
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
​
INSERT INTO restaurants (name, street, postal_code, city, description, email, phone_number, website, image, latitude, longitude) VALUES ("tata", "2 rue des pignons", "12345", "Pignons-sur-rue", "C'est super!", "tata@email.com", "1234567890", "https://placekitten.com/200/300", "https://placekitten.com/200/300", "26.2424", "22.2424");
​
CREATE TABLE events (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(80) NOT NULL,
    date DATETIME,
    image VARCHAR(255),
    latitude DECIMAL(10, 8),
    longitude DECIMAL(10, 8)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
​
INSERT INTO events (name, date, image, latitude, longitude) VALUES ("teuf", "2023-06-29", "https://placekitten.com/200/300", "27.2424", "21.2424");
​
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    firstname VARCHAR(80) NOT NULL,
    lastname VARCHAR(255),
    email VARCHAR(255) UNIQUE NOT NULL,
    hashedPassword VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
​
INSERT INTO users (firstname, lastname, email, hashedPassword) VALUES ("mec", "inconnu", "inconnu@anonyme.com", "183454835465");
​
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