--@block Create tables content, contactme and projects
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
    repoType VARCHAR(255),
    CONSTRAINT chk_repoType CHECK (repoType IN ("github","zip","pdf")),
    projectName VARCHAR(255),
    projectDescription TEXT,
    projectLink TEXT,    
);

--@block
-- Example SQL Queries
-- Gets all rows from contactme table
SELECT * FROM ContactMe;

-- Gets all articles from the content table but only from the index page
SELECT * FROM Content WHERE articleLocation = "index";

-- Get the name and link to any project where the repo type is not a zip and it has a valid link
SELECT projectName, projectLink FROM Projects WHERE repoType != "zip" AND projectLink IS NOT NULL;