--
-- This SQL script implements sample queries on the Monopoly database.
--
-- @author kvlinden
-- @version Summer, 2015
--

-- Get the number of Game records.
SELECT *
  FROM Game
  ;

-- Get the player records.
SELECT * 
  FROM Player
  ;

-- Get the places.
SELECT * 
  FROM Place
  ;

-- Get all the users with Calvin email addresses.
SELECT *
  FROM Player
 WHERE emailAddress LIKE '%calvin%'
 ;

-- Get the highest score ever recorded.
  SELECT score
    FROM PlayerGame
ORDER BY score DESC
   LIMIT 1
   ;

-- Get the cross-product of all the tables.
SELECT *
  FROM Player, PlayerGame, Game
  ;

-- Retrieve a list of all the games, ordered by date with the most recent game coming first.
SELECT * 
  FROM Game
ORDER BY timeSpent DESC

--get games from past week.
SELECT * 
  FROM Game
WHERE timespent >= CURRENT_TIMESTAMP - INTERVAL '7 DAY'

--Retrieve a list of players who have (non-NULL) names.
SELECT * 
  FROM Player
  WHERE name IS NOT NULL

--Retrieve a list of IDs for players who have some game score larger than 2000.
SELECT PlayerId
  FROM PlayerGame
  WHERE cash >= 200

--Retrieve a list of players who have GMail accounts.
SELECT *
  FROM Player
  WHERE emailAddress LIKE '%gmail%'

--Retrieve all “The King”’s game scores in decreasing order.
SELECT *
  FROM  Player, PlayerGame
  WHERE Player.ID = PlayerGame.playerID
    AND Player.name = 'The King'
    ORDER BY cash DESC

--Retrieve the name of the winner of the game played on 2006-06-28 13:20:00.
SELECT name
  FROM Player, PlayerGame, Game
  WHERE Player.ID = PlayerGame.playerID
    AND PlayerGame.gameID = Game.ID
      AND Game.timespent = '2006-06-28 13:20:00'
      ORDER by cash DESC
      LIMIT 1;



