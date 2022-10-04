#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))
TRIES=1
while [[ $SECRET_NUMBER != 0 ]] 
do
  echo "Enter your username: "
  read GET_USERNAME
  if [[ $GET_USERNAME =~ .{,22} ]]
  then 
    USERNAME=$($PSQL "SELECT username FROM users WHERE username='$GET_USERNAME'")
    if [[ -z $USERNAME ]]
    then
      echo "Welcome, $GET_USERNAME! It looks like this is your first time here."
      INSERT_USERNAME=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$GET_USERNAME', 0, 1000)")
      USERNAME=$GET_USERNAME
      GAMES_PLAYED=0
      BEST_GAME=1000
    else
      GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'")
      BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")
      echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
    fi
    echo Guess the secret number between 1 and 1000:
    read GUESSES
    while [[ ! $GUESSES =~ ^[0-9]+$ ]]
    do 
      echo "That is not an integer, guess again:"
      read GUESSES
    done
    while [[ $GUESSES != $SECRET_NUMBER ]]
    do 
      if [[ $GUESSES -gt $SECRET_NUMBER ]]
      then 
        echo "It's lower than that, guess again:"
      else 
        echo "It's higher than that, guess again:"
      fi
      TRIES=$(( $TRIES + 1 ))
      read GUESSES
      while [[ ! $GUESSES =~ ^[0-9]+$ ]]
      do 
        echo "That is not an integer, guess again:"
        read GUESSES
      done
    done
    echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
    UPDATE=$($PSQL "UPDATE users SET games_played = games_played + 1 WHERE username='$USERNAME'")
    if [[ $TRIES -lt $BEST_GAME ]]
    then
      UPDATE=$($PSQL "UPDATE users SET best_game = $TRIES WHERE username='$USERNAME'")
    fi
    SECRET_NUMBER=0
  fi  
done
