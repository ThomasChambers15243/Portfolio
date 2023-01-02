--@block Create tables
CREATE TABLE Content(
    id INTEGER PRIMARY KEY IDENTITY(1, 1),
    articleLocation VARCHAR(255),
    articleName VARCHAR(255),
    articleText TEXT
);

CREATE TABLE ContactMe(
    id INT PRIMARY KEY IDENTITY(1, 1),
    userName VARCHAR(255),
    userEmail VARCHAR(255),
    userMessage TEXT
);

CREATE TABLE Projects(
    id INT PRIMARY KEY IDENTITY(1, 1),
);


--@block Add Content
INSERT Into