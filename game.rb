require './players.rb'
require './question.rb'

class Game
  def initialize
    @players = []
    @players[0] = Players.new('player1') 
    @players[1] = Players.new('player2')
  end
  
    
    def opening_question
      @new_question = Question.new
      puts "---- NEW TURN ----"
      if @players[0].player_turn
        puts "#{@players[0].name}: #{@new_questionl.question}"
      else 
        puts "#{@players[1].name}: #{@new_question.question}"
      end
    end

    def evaluate_answer
      if gets.chomp.to_i == @new_question.answer
        if @player[0].player_turn
          puts "Awesome job Player 1"
          @player[0].player_turn = false
          @player[1].player_turn = true
          puts "#{player[0].name}: #{@player[0].lives}/3 vs #{player[1].name}: #{@player[1].lives}/3"
          winner?
        else 
          puts "Awesome job Player 2"
          @player[0].player_turn = true
          @player[1].player_turn = false
          puts "#{player[0].name}: #{@player[0].lives}/3 vs #{player[1].name}: #{@player[1].lives}/3"
          winner?
        end
      else
        if @player[0].player_turn
            @player[0].lives -= 1
            puts "Not very quick maths. You lost a life"
            @player[0].player_turn = false
            @player[1].player_turn = true
            puts "#{player[0].name}: #{@player[0].lives}/3 vs #{player[1].name}: #{@player[1].lives}/3"
          winner?
        else 
          @player[1].lives -= 1
            puts "Not very quick maths. You lost a life"
            @player[0].player_turn = true
            @player[1].player_turn = false
            puts "#{player[0].name}: #{@player[0].lives}/3 vs #{player[1].name}: #{@player[1].lives}/3"
          winner?
        end
      end
end

      def winner?
        if @player[0].lives == 0
          puts " ---- GAME OVER ---- "
          puts "#{@player[1].name} wins with a score of #{@player[0].lives}/3"
          puts "Try again"
        elsif
          puts " ---- GAME OVER ---- "
          puts "#{@player[0].name} wins with score of #{@player[0].lives}/3"
          puts "Try again"
        else
          next_turn
        end 
      end

      def next_turn
        
      end