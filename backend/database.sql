



CREATE TABLE `site` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `street` varchar(255) NOT NULL,
  `postal code` varchar(5) NOT NULL,
  `city` varchar(80),
  `description` TEXT,
  `e-mail` varchar(80),
  `phone` number INT (14)),
  `website` varchar(255),
  `image` varchar(255),
  `latitude` DECIMAL(10, 8),
  `longitude` DECIMAL(11, 8),
  `category_id` INT FOREIGN KEY 
);

CREATE TABLE `accomomdation` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `street` varchar(255) NOT NULL,
  `postal code` varchar(5) NOT NULL,
  `city` varchar(80),
  `description` TEXT,
  `e-mail` varchar(80),
  `phone` number INT (14)),
  `website` varchar(255),
  `image` varchar(255),
  `latitude` DECIMAL(10, 8),
  `longitude` DECIMAL(11, 8)
);

CREATE TABLE `category` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL
);

CREATE TABLE `map` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `latitude` DECIMAL(10, 8),
  `longitude` DECIMAL(11, 8),
  `sites_id` INT foreign key,
  `restaurants_id` INT foreign key,
  `accommodation_id` INT foreign key,
  `events_id` INT foreign key,
  `users_id` INT foreign key

);

CREATE TABLE `events` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date` date,
  `image` varchar(255),
  `latitude` DECIMAL(10, 8),
  `longitude` DECIMAL(11, 8)
  
);


CREATE TABLE `restaurants` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `street` varchar(255) NOT NULL,
  `postal code` varchar(5) NOT NULL,
  `city` varchar(80),
  `description` TEXT,
  `e-mail` varchar(80),
  `phone` number INT (14)),
  `website` varchar(255),
  `image` varchar(255),
  `latitude` DECIMAL(10, 8),
  `longitude` DECIMAL(11, 8)
);


CREATE TABLE `users` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `firstname` varchar(80) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(80)
);



insert into users (firstname, lastname, email, password) values ('toto', 'titi', toto.email@gmail.com, 123456);