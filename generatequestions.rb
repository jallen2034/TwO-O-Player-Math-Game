# declare generateQuestions class here - TODO - these are like functions that will be executed inside of MathGameComputerActions
  class GenerateQuestions
    def do_question
      num1 = rand(0...20)
      num2 = rand(0...20)
      answer = num1 + num2
      puts "What does #{num1} + #{num2} equal?"

      # gets will retrieve the users typed in input from the command line, chomp() will remove whitespace from users input, to_i converts string to int
      player_1_answer = gets.chomp().to_i

      # verify player_1_answer matches our answer above
      if player_1_answer == answer
        return true
      else 
        return false
      end
    end
  end
