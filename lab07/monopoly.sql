--
-- This SQL script builds a monopoly database, deleting any pre-existing version.
--
-- @author kvlinden
-- @version Summer, 2015
--

-- Drop previous versions of the tables if they they exist, in reverse order of foreign keys.
DROP TABLE IF EXISTS PlayerGame;
DROP TABLE IF EXISTS Game;
DROP TABLE IF EXISTS Player;

-- Create the schema.
CREATE TABLE Game (
	ID integer PRIMARY KEY, 
	housesLeft integer, 
	hotelsLeft integer, 
	timeSpent timestamp
	);

CREATE TABLE Player (
	ID integer PRIMARY KEY, 
	emailAddress varchar(50) NOT NULL,
	name varchar(50)
	);

CREATE TABLE PlayerGame (
	gameID integer REFERENCES Game(ID), 
	playerID integer REFERENCES Player(ID),
	cash integer
	
	);

CREATE TABLE Place (
	ID integer PRIMARY KEY, 
	name varchar(50)

);

CREATE TABLE PlayerPlaceGame (

playerID integer REFERENCES Player(ID), 
placeID integer REFERENCES Place(id),
gameID integer REFERENCES Game(ID), 
houses integer, 
hotels boolean,
mortgaged boolean

	
);

-- Allow users to select data from the tables.
GRANT SELECT ON Game TO PUBLIC;
GRANT SELECT ON Player TO PUBLIC;
GRANT SELECT ON PlayerGame TO PUBLIC;
GRANT SELECT ON Place TO PUBLIC;
GRANT SELECT ON PlayerPlaceGame TO PUBLIC;

-- Default property info
INSERT INTO Place VALUES (1, 'Mediterranean Avenue');
INSERT INTO Place VALUES (2, 'Baltic Avenue');

INSERT INTO Place VALUES (3, 'Oriental Avenue');
INSERT INTO Place VALUES (4, 'Vermont Avenue');
INSERT INTO Place VALUES (5, 'Connecticut Avenue');

INSERT INTO Place VALUES (6, 'St. Charles Place');
INSERT INTO Place VALUES (7, 'States Avenue');
INSERT INTO Place VALUES (8, 'Virginia Avenue');

INSERT INTO Place VALUES (9, 'St. James Place');
INSERT INTO Place VALUES (10, 'Tennessee Avenue');
INSERT INTO Place VALUES (11, 'New York Avenue' );

INSERT INTO Place VALUES (12, 'Kentucky Avenue' );
INSERT INTO Place VALUES (13, 'Indiana Avenue' );
INSERT INTO Place VALUES (14, 'Illinois Avenue' );

INSERT INTO Place VALUES (15, 'Atlantic Avenue' );
INSERT INTO Place VALUES (16, 'Ventnor Avenue' );
INSERT INTO Place VALUES (17, 'Marvin Gardens' );

INSERT INTO Place VALUES (18, 'Pacific Avenue' );
INSERT INTO Place VALUES (19, 'North Carolina Avenue' );
INSERT INTO Place VALUES (20, 'Pennsylvania Avenue' );

INSERT INTO Place VALUES (21, 'Park Place' );
INSERT INTO Place VALUES (22, 'Boardwalk' );

-- Add sample records.
INSERT INTO Game VALUES (1, 32, 12, '2006-06-27 08:00:00');
INSERT INTO Game VALUES (2, 25, 12, '2006-06-28 13:20:00');
INSERT INTO Game VALUES (3, 18, 11, '2006-06-29 18:41:00');

INSERT INTO Player(ID, emailAddress) VALUES (1, 'me@calvin.edu');
INSERT INTO Player VALUES (2, 'king@gmail.edu', 'The King');
INSERT INTO Player VALUES (3, 'dog@gmail.edu', 'Dogbreath');

INSERT INTO PlayerGame VALUES (1, 1, 0.00);
INSERT INTO PlayerGame VALUES (1, 2, 0.00);
INSERT INTO PlayerGame VALUES (1, 3, 2350.00);
INSERT INTO PlayerGame VALUES (2, 1, 1000.00);
INSERT INTO PlayerGame VALUES (2, 2, 0.00);
INSERT INTO PlayerGame VALUES (2, 3, 500.00);
INSERT INTO PlayerGame VALUES (3, 2, 0.00);
INSERT INTO PlayerGame VALUES (3, 3, 5500.00);

INSERT INTO PlayerPlaceGame VALUES(1, 1, 3, 4, false, false);

INSERT INTO PlayerPlaceGame VALUES(2, 3, 3, 4, false, false);
INSERT INTO PlayerPlaceGame VALUES(2, 4, 3, 4, false, false);
INSERT INTO PlayerPlaceGame VALUES(2, 5, 3, 0, true, false);

INSERT INTO PlayerPlaceGame VALUES(3, 6, 3, 0, false, true);

