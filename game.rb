require './players.rb'
require './question.rb'

class Game
  def initialize
    puts "What's player 1's name?"
    p1 = geys.chomp
    @p1 = Player.new(p1)
    puts "What's player 2's name?"
    p2 = gets.chomp
    @p2 = Player.new(p2)
  end
end