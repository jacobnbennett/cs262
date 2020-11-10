@REM -- Retrieve a list of all the games, ordered by date with the most recent game coming first.
@REM SELECT * 
@REM   FROM Game
@REM ORDER BY timeSpent DESC
@REM ;

@REM SELECT * 
@REM   FROM Game
@REM WHERE timespent >= CURRENT_TIMESTAMP - INTERVAL '7 DAY'

@REM --Retrieve a list of players who have (non-NULL) names.
@REM SELECT * 
@REM   FROM Player
@REM   WHERE name IS NOT NULL

@REM --Retrieve a list of IDs for players who have some game score larger than 2000.
@REM SELECT PlayerId
@REM   FROM PlayerGame
@REM   WHERE cash >= 200

@REM --Retrieve a list of players who have GMail accounts.
@REM SELECT *
@REM   FROM Player
@REM   WHERE emailAddress LIKE '%gmail%'

@REM SELECT *
@REM   FROM  Player, PlayerGame
@REM   WHERE Player.ID = PlayerGame.playerID
@REM     AND Player.name = 'The King'
@REM     ORDER BY cash DESC

@REM SELECT name
@REM   FROM Player, PlayerGame, Game
@REM   WHERE Player.ID = PlayerGame.playerID
@REM     AND PlayerGame.gameID = Game.ID
@REM       AND Game.timeSpent = '2006-06-28 13:20:00'
@REM       ORDER by cash DESC
@REM       LIMIT 1;

@REM So what does that P1.ID < P2.ID clause do in the last example query?
@REM It finds all instances where there is the same name in the two duplicate sheets and returns the name where there is a different id

@REM The query that joined the Player table to itself seems rather contrived. Can you think of a realistic situation in which you’d want to join a table to itself?
@REM When the table references itself. For example at a company where employees have supervisors that are also employees.
