--@block Create All Tables
CREATE TABLE Content (
  id int NOT NULL PRIMARY KEY,
  articleLocation varchar(255),  
  articleName varchar(255),
  articleText text
);

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


--@block del tables
drop TABLE projects;
drop TABLE contactme;
drop TABLE content;