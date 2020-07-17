CREATE TABLE characters (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name TEXT NOT NULL,
    thumbnail TEXT NOT NULL,
    banner TEXT NOT NULL
);

CREATE TABLE moves (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    command TEXT NOT NULL,
    startFrames INTEGER NOT NULL,
    activeFrames INTEGER NOT NULL,
    onBlock INTEGER NOT NULL,
    onHit INTEGER NOT NULL,
    properties TEXT
);

CREATE TABLE users(
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  user_name TEXT NOT NULL UNIQUE,
  password TEXT NOT NULL
);

CREATE TABLE notes (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  content TEXT
);