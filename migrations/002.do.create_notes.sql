CREATE TABLE notes ( 
id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
name TEXT NOT NULL,
folderId INTEGER REFERENCES folders(id),
modified TIMESTAMPTZ NOT NULL DEFAULT now(),
content TEXT
);