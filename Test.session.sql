DROP TABLE portfolio;
CREATE TABLE portfolio(
    id INT NOT NULL,
    ProjectName VARCHAR(255) NOT NULL,
    Link TEXT NOT NULL,
    content TEXT NOT NULL,
    semester INT NOT NULL,
    PRIMARY KEY (id)
);
--@block
INSERT INTO portfolio
VALUES(123, 
"Guitar Controller", 
"https://drawsql.app/teams/toms-team-5/diagrams/test", 
"Husky is a general term for a dog used in the polar regions, primarily and specifically for work as sled dogs. It refers to a traditional northern type",
2
);
INSERT INTO portfolio VALUES (098, 
"falmouth tracker",
"https://www.google.com/search?q=husky&rlz=1C1CHBF_en-GBGB966GB966&oq=husky&aqs=chrome.0.0i271j46i67i433j0i67l4j0i67i433j0i131i433i512j0i433i512l2.3538j0j7&sourceid=chrome&ie=UTF-8",
"The Labrador Retriever or simply Labrador is a British breed of retriever gun dog. It was developed in the United Kingdom from fishing dogs imported from the colony of Newfoundland, and was named after the Labrador region of that colony.",
3
);

 --@block
 SELECT * FROM portfolio;