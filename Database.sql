--connexion au serveur
mysql -h 127.0.0.1 -u root

--création de la base de données
CREATE DATABASE cinema

--création des tables

CREATE TABLE cinemas (
        id VARCHAR(36) NOT NULL PRIMARY KEY,
        name VARCHAR(25) NOT NULL
);

CREATE TABLE admins (
        id VARCHAR(36) NOT NULL,
        lastName VARCHAR(25) NOT NULL,
        firstName VARCHAR(25) NOT NULL,
        cinema_Id VARCHAR(36) NOT NULL,
        FOREIGN KEY (cinema_Id) REFERENCES cinemas(id),
        PRIMARY KEY (id, cinema_Id)
);

CREATE TABLE movies (
        id VARCHAR(36) NOT NULL PRIMARY KEY,
        title VARCHAR(25) NOT NULL,
        year INT NOT NULL,
        audio VARCHAR(25) NOT NULL,
        director VARCHAR(25) NOT NULL,
        type VARCHAR(25) NOT NULL,
        duration DECIMAL(2,1)
);

CREATE TABLE cinemas_movies (
        cinema_id VARCHAR(36) NOT NULL,
        movie_id VARCHAR(36) NOT NULL,
        PRIMARY KEY (cinema_id, movie_id),
        FOREIGN KEY (cinema_id) REFERENCES cinemas(id),
        FOREIGN KEY (movie_id) REFERENCES movies(id)
);

CREATE TABLE rooms (
        id VARCHAR(36) NOT NULL,
        room_nb INT NOT NULL,
        cinema_id VARCHAR(36) NOT NULL,
        seats INT NOT NULL,
        FOREIGN KEY (cinema_id) REFERENCES cinemas(id),
        PRIMARY KEY (id, cinema_Id)
);

CREATE TABLE sessions (
        id VARCHAR(36) NOT NULL,
        sessions_date DATETIME NOT NULL,
        cinema_id VARCHAR(36) NOT NULL,
        movie_id VARCHAR(36) NOT NULL,
        room_id VARCHAR(36) NOT NULL,
        PRIMARY KEY (id, cinema_Id, movie_id, room_id)
);

CREATE TABLE clients (
        id VARCHAR(36) NOT NULL PRIMARY KEY,
        lastName VARCHAR(25) NOT NULL,
        firstName VARCHAR(25) NOT NULL,
        age INT NOT NULL,
        is_student TINYINT NOT NULL
);

CREATE TABLE tickets (
        id VARCHAR(36) NOT NULL PRIMARY KEY,
        price DECIMAL(3,2) NOT NULL,
        session_id VARCHAR(36) NOT NULL,
        client_id VARCHAR(36) NOT NULL,
        paid_online TINYINT NOT NULL,
        FOREIGN KEY (client_id) REFERENCES clients(id),
        FOREIGN KEY (session_id) REFERENCES sessions(id)
);


--insertion des informations de test

INSERT INTO cinemas (
    id, name
)
VALUES (
    UUID(),
    "UGTP2"
);

INSERT INTO cinemas (
    id, name
)
VALUES (
    UUID(),
    "UGTV2"
);

INSERT INTO admins (
    id, lastName, firstName, cinema_Id
)
VALUES (
    UUID(),
    "Constantine",
    "John",
    "55da7afb-3288-11ec-936c-b8763fe90789"
);

INSERT INTO admins (
    id, lastName, firstName, cinema_Id
)
VALUES (
    UUID(),
    "Wayne",
    "Bruce",
    "56496fe7-3288-11ec-936c-b8763fe90789"
);

INSERT INTO admins (
    id, lastName, firstName, cinema_Id
)
VALUES (
    UUID(),
    "Sombrage",
    "Ulrik",
    "56496fe7-3288-11ec-936c-b8763fe90789"
);

INSERT INTO movies (
    id,
    title,
    year,
    audio,
    director,
    type,
    duration
)
VALUES (
    UUID(),
    "Blade Runner",
    1982,
    "VF",
    "Ridley Scott",
    "SF/Action",
    2.0
);

INSERT INTO movies (
    id,
    title,
    year,
    audio,
    director,
    type,
    duration
)
VALUES (
    UUID(),
    "Dune",
    2021,
    "VF",
    "Ridley Scott",
    "SF/Action",
    2.6
);

INSERT INTO movies (
    id,
    title,
    year,
    audio,
    director,
    type,
    duration
)
VALUES (
    UUID(),
    "The Gentlemen",
    2019,
    "VO",
    "Guy Ritchie",
    "Crime/Action",
    1.9
);

INSERT INTO cinemas_movies (
    cinema_id,
    movie_id
)
VALUES (
    "56496fe7-3288-11ec-936c-b8763fe90789",
    "92496c29-3288-11ec-936c-b8763fe90789"
);

INSERT INTO cinemas_movies (
    cinema_id,
    movie_id
)
VALUES (
    "56496fe7-3288-11ec-936c-b8763fe90789",
    "924aead2-3288-11ec-936c-b8763fe90789"
);

INSERT INTO cinemas_movies (
    cinema_id,
    movie_id
)
VALUES (
    "55da7afb-3288-11ec-936c-b8763fe90789",
    "92f97fb3-3288-11ec-936c-b8763fe90789"
);

INSERT INTO rooms (
    id,
    room_nb,
    cinema_id,
    seats
)
VALUES (
    UUID(),
    1,
    "55da7afb-3288-11ec-936c-b8763fe90789",
    100
);

INSERT INTO rooms (
    id,
    room_nb,
    cinema_id,
    seats
)
VALUES (
    UUID(),
    1,
    "56496fe7-3288-11ec-936c-b8763fe90789",
    100
);

INSERT INTO rooms (
    id,
    room_nb,
    cinema_id,
    seats
)
VALUES (
    UUID(),
    2,
    "56496fe7-3288-11ec-936c-b8763fe90789",
    100
);

INSERT INTO rooms (
    id,
    room_nb,
    cinema_id,
    seats
)
VALUES (
    UUID(),
    3,
    "56496fe7-3288-11ec-936c-b8763fe90789",
    100
);

INSERT INTO sessions (
    id,
    sessions_date,
    cinema_id,
    movie_id,
    room_id
)
VALUES (
    UUID(),
    "2021-10-15 21:50",
    "56496fe7-3288-11ec-936c-b8763fe90789",
    "92496c29-3288-11ec-936c-b8763fe90789",
    "ff381dfa-3288-11ec-936c-b8763fe90789"
);

INSERT INTO sessions (
    id,
    sessions_date,
    cinema_id,
    movie_id,
    room_id
)
VALUES (
    UUID(),
    "2021-10-20 19:00",
    "56496fe7-3288-11ec-936c-b8763fe90789",
    "924aead2-3288-11ec-936c-b8763fe90789",
    "ff9dfafa-3288-11ec-936c-b8763fe90789"
);

INSERT INTO sessions (
    id,
    sessions_date,
    cinema_id,
    movie_id,
    room_id
)
VALUES (
    UUID(),
    "2021-10-20 19:00",
    "56496fe7-3288-11ec-936c-b8763fe90789",
    "924aead2-3288-11ec-936c-b8763fe90789",
    "645dc5d1-328d-11ec-936c-b8763fe90789"
);

INSERT INTO sessions (
    id,
    sessions_date,
    cinema_id,
    movie_id,
    room_id
)
VALUES (
    UUID(),
    "2021-10-5 23:00",
    "55da7afb-3288-11ec-936c-b8763fe90789",
    "92f97fb3-3288-11ec-936c-b8763fe90789",
    "ff36e542-3288-11ec-936c-b8763fe90789"
);

INSERT INTO clients (
    id,
    lastName,
    firstName,
    age,
    is_student
)
VALUES (
    UUID(),
    "Snake",
    "Solid",
    40,
    0
);

INSERT INTO clients (
    id,
    lastName,
    firstName,
    age,
    is_student
)
VALUES (
    UUID(),
    "Hatchet",
    "Holly",
    22,
    1
);

INSERT INTO clients (
    id,
    lastName,
    firstName,
    age,
    is_student
)
VALUES (
    UUID(),
    "Turtle",
    "Franklin",
    14,
    0
);

INSERT INTO clients (
    id,
    lastName,
    firstName,
    age,
    is_student
)
VALUES (
    UUID(),
    "Rambo",
    "John",
    50,
    0
);

INSERT INTO tickets (
    id,
    price,
    session_id,
    client_id,
    paid_online
)
VALUES (
    UUID(),
    CASE
  		WHEN (SELECT age FROM clients WHERE id="97bd018d-3289-11ec-936c-b8763fe90789") <= 14 THEN 5.9
  		WHEN (SELECT is_student FROM clients WHERE id="97bd018d-3289-11ec-936c-b8763fe90789") = 1 THEN 7.6
  		ELSE 9.2
  	END,
  	"5df8a9c0-3289-11ec-936c-b8763fe90789",
  	"97bd018d-3289-11ec-936c-b8763fe90789",
    0
);

INSERT INTO tickets (
    id,
    price,
    session_id,
    client_id,
    paid_online
)
VALUES (
    UUID(),
    CASE
  		WHEN (SELECT age FROM clients WHERE id="97be87bc-3289-11ec-936c-b8763fe90789") <= 14 THEN 5.9
  		WHEN (SELECT is_student FROM clients WHERE id="97be87bc-3289-11ec-936c-b8763fe90789") = 1 THEN 7.6
  		ELSE 9.2
  	END,
  	"5dfa4850-3289-11ec-936c-b8763fe90789",
  	"97be87bc-3289-11ec-936c-b8763fe90789",
    1
);

INSERT INTO tickets (
    id,
    price,
    session_id,
    client_id,
    paid_online
)
VALUES (
    UUID(),
    CASE
  		WHEN (SELECT age FROM clients WHERE id="97bf658b-3289-11ec-936c-b8763fe90789") <= 14 THEN 5.9
  		WHEN (SELECT is_student FROM clients WHERE id="97bf658b-3289-11ec-936c-b8763fe90789") = 1 THEN 7.6
  		ELSE 9.2
  	END,
  	"5ec6cc28-3289-11ec-936c-b8763fe90789",
  	"97bf658b-3289-11ec-936c-b8763fe90789",
    1
);

INSERT INTO tickets (
    id,
    price,
    session_id,
    client_id,
    paid_online
)
VALUES (
    UUID(),
    CASE
  		WHEN (SELECT age FROM clients WHERE id="98681725-3289-11ec-936c-b8763fe90789") <= 14 THEN 5.9
  		WHEN (SELECT is_student FROM clients WHERE id="98681725-3289-11ec-936c-b8763fe90789") = 1 THEN 7.6
  		ELSE 9.2
  	END,
  	"5ec6cc28-3289-11ec-936c-b8763fe90789",
  	"98681725-3289-11ec-936c-b8763fe90789",
    0
);

--Test d'éxistence des tables et du bon fonctionnement des insertion
SELECT EXISTS(SELECT * FROM admins);
SELECT IF(COUNT(*) = 3, "ok", "pas ok") FROM admins;

SELECT EXISTS(SELECT * FROM cinemas);
SELECT IF(COUNT(*) = 2, "ok", "pas ok") FROM cinemas;

SELECT EXISTS(SELECT * FROM cinemas_movies);
SELECT IF(COUNT(*) = 3, "ok", "pas ok") FROM cinemas_movies;

SELECT EXISTS(SELECT * FROM clients);
SELECT IF(COUNT(*) = 4, "ok", "pas ok") FROM clients;

SELECT EXISTS(SELECT * FROM movies);
SELECT IF(COUNT(*) = 3, "ok", "pas ok") FROM movies;

SELECT EXISTS(SELECT * FROM rooms);
SELECT IF(COUNT(*) = 4, "ok", "pas ok") FROM rooms;

SELECT EXISTS(SELECT * FROM sessions);
SELECT IF(COUNT(*) = 4, "ok", "pas ok") FROM sessions;

SELECT EXISTS(SELECT * FROM tickets);
SELECT IF(COUNT(*) = 4, "ok", "pas ok") FROM tickets;

--Vérification point FAQ: Non. Nous sommes partenaires de plusieurs complexes, et donc nous aimerions qu'il soit possible de réserver au choix dans l'un d'entre eux.
SELECT sessions.sessions_date AS date_de_diffusion, sessions.cinema_Id AS indentifiant_cinema, sessions.movie_id AS identifiant_films, sessions.room_id AS identifiant_salles, cinemas.name AS nom_cinema FROM sessions LEFT JOIN cinemas ON sessions.cinema_id = cinemas.id ORDER BY cinemas.id;

--Vérification point FAQ:Dans un cinéma, peut-il y avoir le passage du même film au même horaire dans plusieurs salles différentes ?
SELECT sessions_date AS date_de_diffusion, cinema_id AS identifiant_cinema, movie_id AS identifiant_films, room_id AS identifiant_salles FROM sessions ORDER BY sessions_date;

--Vérification point FAQ: Désirez-vous que vos clients puissent choisir leur place?
SELECT IF(COUNT(SELECT * FROM tickets WHERE session_id = "5dfa4850-3289-11ec-936c-b8763fe90789") >= (SELECT rooms.seats FROM sessions WHERE session_id = "5dfa4850-3289-11ec-936c-b8763fe90789" LEFT JOIN rooms ON sessions.room_id = rooms.id), "available seats", "no available seats");

--Vérification point FAQ: Quels tarifs possibles?
SELECT tickets.price AS prix, CONCAT(clients.lastName," ", clients.firstName) AS client, clients.age AS age, clients.is_student AS Etudiant FROM tickets LEFT JOIN clients ON tickets.client_id = clients.id;

--Vérification point FAQ: Le paiement se fera sur place ou en ligne?
SELECT tickets.price AS prix, CONCAT(clients.lastName," ", clients.firstName) AS client, tickets.paid_online FROM tickets LEFT JOIN clients ON tickets.client_id = clients.id;

--Vérification point FAQ: D'un point de vue back office, qui pourra inscrire les séances?
SELECT CONCAT(admins.lastName," ", admins.firstName) AS admin, cinemas.name AS cinema FROM admins LEFT JOIN cinemas ON admins.cinema_Id = cinemas.id;


--Sauvegarde de la bdd
mysqldump -u root -h 127.0.0.1 > bdd.sql;
