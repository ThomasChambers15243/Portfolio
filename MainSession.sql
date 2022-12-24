
--@block create tables
CREATE TABLE Content (
  id int NOT NULL PRIMARY KEY,
  articleName varchar(255),
  articleText text,
  articleLocation varchar(255)
);

--@block 2
drop table ContactMe;
drop table Projects;
CREATE TABLE ContactMe (
  id int NOT NULL PRIMARY KEY,
  userName varchar(255),
  userEmail varchar(255),
  userMessage text,
  createdAt timestamp
);

CREATE TABLE Projects (
  id int NOT NULL PRIMARY KEY,
  repoType varchar(255),
  projectName varchar(255),
  projectDscription text,
  projectLink text
);

--@block insert test values
INSERT INTO content values(1,'Kodland','sdfsdfsdf');
SELECT * from content where articleName = 'Kodland';

--@block del tables
drop TABLE projects;
drop TABLE contactme;
drop TABLE content;