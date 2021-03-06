# The player class will keep track of the number of lives (state = 3/2/1/0),
# as well as who the current player is (state = true/false).
# The class will be intialized with 3/3 lives.
# Player 1 will have current_player intialize to true.
# Player 2 will have current_player intialize to false.
# It will not contain user I/O
# It will have a lost_life method which decrements the number of lives

class Players
  attr_accessor :lives, :player_turn
  attr_reader :name

  def initialize(name) 
  @lives = 3
  @player_turn = false
  @name = name
  end
end