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
-- Exmple of an insert into the Content Table
INSERT INTO CONTENT VALUES (
    "index",
    "MainIntro",
    "Hi, my name is Tom Chambers and I’m a Computer Science <b>Student</b> at Falmouth University and a programming <b>Tutor</b> for 3coneX, Cameroon.
    <br><br>
    My love of programming has only grown since starting my studies and has expanded into a love of teaching its valuable skills, 
    to the younger generation at home and abroad, through scratch and python.
    <br><br>
    In my free time, you're most likely to find me practicing guitar, which I've play since my early teens, or reading, hiking 
    or practicing my bad photography skills."
);

-- Example of an insert into projects
INSERT INTO projects VALUES(
    "github",
    "FalTracker",
    "<b>Faltracker</b> is a discord bot that is currently running on a student server for over 300 students in our deparment. Written in <b>python</b>, 
    it scrapes live data from Falmouth Uni’s website to determine:
    <ul>
        <li> Whether services (shops, cafes, gyms) are open or closed </li>
        <li> The service's opening times</li>
        <li> Upcomming Uni held events</li>
        <li> Lists of helpful uni contact infomation, such as emails and numbers</li>
    </ul>
    
    This data is then formatted depending on the user’s request and then fed back to the user through the correct discord channel.    
    <br><br>
    Its makes use of the Asynchronous HTTP Client/Server for [asyncio](https://docs.aiohttp.org/en/stable/glossary.html#term-asyncio) 
    to extract the html data from a uni webpage. 
    The text in the file is sorted and cleaned for relivance and then the needed data is fed back to the user.",
    "https://github.com/ThomasChambers15243/FalTracker"
)