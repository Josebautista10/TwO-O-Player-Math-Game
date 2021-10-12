require './players.rb'
require './question.rb'

class Game
  def initialize
    @player1 = Players.new('player1') 
    @player2 = Players.new('player2')
  end
  
    
    def opening_question
      @new_question = Question.new
      puts "---- NEW TURN ----"
      if @player1.player_turn
        puts "#{@player1.name}: #{@new_question.question}"
      else 
        puts "#{@player2.name}: #{@new_question.question}"
      end
    end

    def evaluate_answer
      if gets.chomp.to_i == @new_question.answer
        if @player1.player_turn
            puts "Awesome job Player 1"
            @player1.player_turn = false
            @player2.player_turn = true
            puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
            winner?
        else 
            puts "Awesome job Player 2"
            @player1.player_turn = true
            @player2.player_turn = false
            puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
            winner?
        end
      else
        if @player1.player_turn
            @player1.lives -= 1
            puts "Not very quick maths. You lost a life"
            @player1.player_turn = false
            @player2.player_turn = true
            puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
            winner?
        else 
            @player2.lives -= 1
            puts "Not very quick maths. You lost a life"
            @player1.player_turn = true
            @player2.player_turn = false
            puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
            winner?
        end
      end
    end
    
    def next_turn
      opening_question
      evaluate_answer
    end

      def winner?
        if @player1.lives == 0
          puts " ---- GAME OVER ---- "
          puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
          puts "Try again"
        elsif @player2.lives == 0
          puts " ---- GAME OVER ---- "
          puts "#{@player1.name} wins with score of #{@player1.lives}/3"
          puts "Try again"
        else
          next_turn
        end 
      end
      
end