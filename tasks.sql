CREATE DATABASE tasks;
SHOW TABLES;

# tasklist table
CREATE TABLE tasklist (taskid INTEGER PRIMARY KEY, task TEXT, locid INTEGER);
INSERT INTO tasklist (taskid, task, locid) VALUES (1, 'Get coffee', 1);
INSERT INTO tasklist (taskid, task, locid) VALUES (2, 'Go home', 1);
INSERT INTO tasklist (taskid, task, locid) VALUES (3, 'Feed piggies', 2);

# location list table
CREATE TABLE loclist (locid INTEGER PRIMARY KEY, location TEXT);
INSERT INTO loclist (locid, location) VALUES (1, 'Summer Moon');
INSERT INTO loclist (locid, location) VALUES (2, 'Home');

# Just for learning
ALTER TABLE tasklist ADD COLUMN locid INTEGER;
UPDATE tasklist SET locid = 1 WHERE taskid = 1;
SELECT task,location FROM tasklist LEFT JOIN loclist ON tasklist.locid = loclist.locid;

# Person list table
CREATE TABLE plist (perid INTEGER PRIMARY KEY, name TEXT);
INSERT INTO plist (perid, name) VALUES (1, 'Rez');
INSERT INTO plist (perid, name) VALUES (2, 'Darren');

CREATE TABLE items (itemid INTEGER PRIMARY KEY, item TEXT);
CREATE TABLE times (timeid INTEGER PRIMARY KEY, bdate TEXT, btime TEXT, edate TEXT, etime TEXT);

# Join table
CREATE TABLE task_people (taskid INTEGER, perid INTEGER);
INSERT INTO task_people (taskid, perid) VALUES (1, 1);
INSERT INTO task_people (taskid, perid) VALUES (1, 2);

