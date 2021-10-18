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
    "5c62a194-2cc3-11ec-87a4-6e8f106c5dd1"
);

INSERT INTO admins (
    id, lastName, firstName, cinema_Id
)
VALUES (
    UUID(),
    "Wayne",
    "Bruce",
    "741a91ef-2cc3-11ec-87a4-6e8f106c5dd1"
);

INSERT INTO admins (
    id, lastName, firstName, cinema_Id
)
VALUES (
    UUID(),
    "Sombrage",
    "Ulrik",
    "741a91ef-2cc3-11ec-87a4-6e8f106c5dd1"
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
    "741a91ef-2cc3-11ec-87a4-6e8f106c5dd1",
    "ab6572e6-2cc9-11ec-87a4-6e8f106c5dd1"
);

INSERT INTO cinemas_movies (
    cinema_id,
    movie_id
)
VALUES (
    "741a91ef-2cc3-11ec-87a4-6e8f106c5dd1",
    "b031ba76-2cc9-11ec-87a4-6e8f106c5dd1"
);

INSERT INTO cinemas_movies (
    cinema_id,
    movie_id
)
VALUES (
    "5c62a194-2cc3-11ec-87a4-6e8f106c5dd1",
    "e017f80f-2cc9-11ec-87a4-6e8f106c5dd1"
);

INSERT INTO rooms (
    id,
    room_nb,
    cinema_id
)
VALUES (
    UUID(),
    1,
    "5c62a194-2cc3-11ec-87a4-6e8f106c5dd1"
);

INSERT INTO rooms (
    id,
    room_nb,
    cinema_id
)
VALUES (
    UUID(),
    1,
    "741a91ef-2cc3-11ec-87a4-6e8f106c5dd1"
);

INSERT INTO rooms (
    id,
    room_nb,
    cinema_id
)
VALUES (
    UUID(),
    2,
    "741a91ef-2cc3-11ec-87a4-6e8f106c5dd1"
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
    "741a91ef-2cc3-11ec-87a4-6e8f106c5dd1",
    "b031ba76-2cc9-11ec-87a4-6e8f106c5dd1",
    "8b0562f0-2ccd-11ec-87a4-6e8f106c5dd1"
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
    "741a91ef-2cc3-11ec-87a4-6e8f106c5dd1",
    "ab6572e6-2cc9-11ec-87a4-6e8f106c5dd1",
    "8b059bf7-2ccd-11ec-87a4-6e8f106c5dd1"
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
    "5c62a194-2cc3-11ec-87a4-6e8f106c5dd1",
    "e017f80f-2cc9-11ec-87a4-6e8f106c5dd1",
    "8b04789f-2ccd-11ec-87a4-6e8f106c5dd1"
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
    client_id
)
VALUES (
    UUID(),
    CASE
  		WHEN (SELECT age FROM clients WHERE id="4b20af13-2cd0-11ec-87a4-6e8f106c5dd1") <= 14 THEN 5.9
  		WHEN (SELECT is_student FROM clients WHERE id="4b20af13-2cd0-11ec-87a4-6e8f106c5dd1") = 1 THEN 7.6
  		ELSE 9.2
  	END,
  	"faf5357a-2cce-11ec-87a4-6e8f106c5dd1",
  	"4b20af13-2cd0-11ec-87a4-6e8f106c5dd1"
);

INSERT INTO tickets (
    id,
    price,
    session_id,
    client_id
)
VALUES (
    UUID(),
    CASE
  		WHEN (SELECT age FROM clients WHERE id="4b21bcd0-2cd0-11ec-87a4-6e8f106c5dd1") <= 14 THEN 5.9
  		WHEN (SELECT is_student FROM clients WHERE id="4b21bcd0-2cd0-11ec-87a4-6e8f106c5dd1") = 1 THEN 7.6
  		ELSE 9.2
  	END,
  	"faf62f37-2cce-11ec-87a4-6e8f106c5dd1",
  	"4b21bcd0-2cd0-11ec-87a4-6e8f106c5dd1"
);

INSERT INTO tickets (
    id,
    price,
    session_id,
    client_id
)
VALUES (
    UUID(),
    CASE
  		WHEN (SELECT age FROM clients WHERE id="4b223112-2cd0-11ec-87a4-6e8f106c5dd1") <= 14 THEN 5.9
  		WHEN (SELECT is_student FROM clients WHERE id="4b223112-2cd0-11ec-87a4-6e8f106c5dd1") = 1 THEN 7.6
  		ELSE 9.2
  	END,
  	"faf7372c-2cce-11ec-87a4-6e8f106c5dd1",
  	"4b223112-2cd0-11ec-87a4-6e8f106c5dd1"
);

INSERT INTO tickets (
    id,
    price,
    session_id,
    client_id
)
VALUES (
    UUID(),
    CASE
  		WHEN (SELECT age FROM clients WHERE id="053616e2-2ce8-11ec-87a4-6e8f106c5dd1") <= 14 THEN 5.9
  		WHEN (SELECT is_student FROM clients WHERE id="053616e2-2ce8-11ec-87a4-6e8f106c5dd1") = 1 THEN 7.6
  		ELSE 9.2
  	END,
  	"faf7372c-2cce-11ec-87a4-6e8f106c5dd1",
  	"053616e2-2ce8-11ec-87a4-6e8f106c5dd1"
);
