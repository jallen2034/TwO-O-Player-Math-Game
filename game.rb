
# Main script to "play the game" 
  # 1. create our players calling our player() Class
  # 2. create our questions calling generateQuestions() class
  # 3. create our playerActions by calling playerActions() class
  # 2. When game fires up, call generatePlayers() method in from this genrated object, which will create an array of the two players to keep track of (P1 and P2)
  # 3. When game fires up call generateQuestionNumbers() method in from this genrated object, which will create our two inital instance variables in our mathgameactions class to keep track of our num1 and num2
  # 4. Set the state in our object to = p1 selected out the gate

  # 5 while loop - (this runs outside of the game class/object, and calls the classes methods to update player status, questions etc when needed)

    # 6. 
    # - call makeQuestion() method, to generate a new math question for the currently selected player to answer 
    #   generates/returns a string with the new question. We have to take this question and serve it to the player somehow
    # - We would then need to call a servePlayerQuestion(question) method to actually serve the player the newly generated question with num1 and num2 and have them answer it, 
    #   this will return the players answer as an int

    # 7. Wait for an answer from the player
    # - Call a verifyAnswer(answer, num1 + num2) method to check the returned answer against num1 + num2, returns true or false 
    # - If player answers the question incorrectly, call reducePlayerLives() method to decrement their lives by 1

    # 8.Keep looping through until selected player is ded - call CheckDead() method to verify if the selected players lives is = 0, return true or false
    # - if checkDead() returns true, then select the opposite player in the array as our state and say they are the winner

    # 9 At the end of each iteration, update the currently selected player - call updatePlayer() method to do this

  # CLASSES TO ACVHIEVE THIS  

  # Class MathGameActions - 3rd - see if we can make our game to use our working polayers and questions? 

  # - remember when you create instance vars that they have accompanying getters and setters that can be used to change their value globally 
  # instance variable in this object to keep track of num 1
  # instance variable in this object to keep track of num 2
  # instance variable in this object to keep track of selected player

  # 1. generatePlayers() - creates array of both players to keep track of in game
  # 2. verifyAnswer(answer, num1 + num2) - check the returned answer against num1 + num2, returns true or false 
  # 3. reducePlayerLives() - reduces the currently selected players amount of lives if verifyAnswer() returns false
  # 4. checkDead() - checks if the currently selecte dlayer is dead
  # 5. updatePlayer() - changes the active status of the currently selected player 
  
  # CLASS playerActions - 1st - can we create player?
  # 2. updatePlayer() - changes the active status of the currently selected player - call the setter method for instance var for selected player
  # 3. reducePlayerLives() - reduces the currently selected players amount of lives if verifyAnswer() returns false

  # Class generateQuestions - 2nd - can we make our questions? 
  # 2. makeQuestion() - generates a new math question for the currently selected player to answer +
  #    this will replace 'num1' and 'num2' state to be new values entirely, to add to our newly generated question.
  # 5. servePlayerQuestion() - called inside makeQuestion() - method to actually serve the player the newly generated question with num1 and num2 and have them answer it, returns their answer as int


