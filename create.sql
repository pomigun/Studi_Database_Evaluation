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
        FOREIGN KEY (client_id) REFERENCES clients(id),
        FOREIGN KEY (session_id) REFERENCES sessions(id)
);
