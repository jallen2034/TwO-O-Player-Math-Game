# import classes with my methods for the player actions and to generate questions for the player
require './player'
require './generatequestions'

# declare MathGameActions class here - TODO
class MathGameComputerActions

  # create our players calling our player() Class
  # initialize() method in this class is called every time this class is initalized as a new instance
  # staring place for inital player set before loop begins
  def initialize()
    @player1 = Player.new('Player_1',3)
    @player2 = Player.new('Player_2',3)
    @current_player = @player1
  end

  # method to kick off and run the game - while loop is inside of here
  def run_game 

    # creates a new instance of the Generatequestions class and stores that object inside of questioner
    questioner = GenerateQuestions.new

    # loop through forever - until @player1.lives > 0 AND @player2.lives > 0 (either dead)
    while @player1.lives > 0 && @player2.lives > 0

      puts "\nplayer 1 lives remaining: \n"
      puts @player1.lives
      puts "\nplayer 2 lives remaining: \n" 
      puts @player2.lives
      puts "\nIt is #{@current_player.name} turn: \n\n"

      # we call questioners do_question method, asks user for math question, and verifies answer, returns true or false
      answer_bool = questioner.do_question

      # if answer_bool returned from questioner.do_question is true/correct answer, otherwise loser
      if answer_bool
        puts "\nCorrect! You hold onto your lives!\n\n"
      else 
        puts "\nIncorrect Answer! You lost a life! Yikes!\n\n"

        # call method to reduce current players number of lives by 1 if they get an answer incorrect
        @current_player.lives -= 1

        # check if the current player has any lives left - if they dont, show them gane over they lose
        if @current_player.lives == 0 
          return puts 'You lost the game, you ran out of lives :('
        end
      end

      # at the end of the above check, before loop incrmeents 1 more time, switch the current player to take their turn
      if @current_player.name == 'Player_2'
        @current_player = @player1
      else 
        @current_player = @player2
      end  

      puts "Next players turn!\n"
    end
  end
end

# call newGame class to invoke our class and generate our two players off the bat
# this is making a new instance of MathGameComputerActions
newGame = MathGameComputerActions.new

# call run_game() method in MathGameComputerActions onject to run our game
newGame.run_game
