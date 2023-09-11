#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")
cat "./games.csv" | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
 do
  if [[ $WINNER != "winner" ]]
    then  
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")

      if [[ -z $WINNER_ID ]]
        then
          INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
          WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
          echo $INSERT_WINNER_RESULT
        fi
      if [[ -z $OPPONENT_ID ]]
        then 
          INSERT_OPPONENT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
          OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")      
          echo $INSERT_OPPONENT_RESULT
        fi
        INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year,round,winner_goals,opponent_goals,winner_id, opponent_id) VALUES($YEAR,'$ROUND', $WINNER_GOALS,$OPPONENT_GOALS,$WINNER_ID,$OPPONENT_ID)")
        if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
          then
            echo "INSERTED $WINNER vs $OPPONENT"
          fi
    fi
    

 done