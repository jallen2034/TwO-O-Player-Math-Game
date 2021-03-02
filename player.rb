# declare playerActions class here - TODO - these are like functions that will be executed inside of MathGameComputerActions
class Player
  
   # attr_accessor which doubles as a getter and setter when used to keep track of the name and lives in this classes state
  attr_accessor :name, :lives

  def initialize(name, lives)
    @name = name
    @lives = lives
  end
end
