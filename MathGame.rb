require './Players.rb'
require './Equations.rb'


class Game 
  def initialize
    @player1 = Players.new("Player 1")
    @player2 = Players.new("Player 2")
  end

  def start
    puts "lets play!"
    start_game
  end

  def start_game
    @player1.ask_question
    update
    @player2.ask_question
    game_over
    start_game
  end


  def game_over
    puts "----GAME OVER----\n GoodBye!"
  end

  def game_over
    if @player1.lose  
      puts "Player 2 wins with a score of #{@player2.lives}/3"
      exit(0)
    elsif @player2.lose 
      puts "Player 2 wins with a score of #{@player1.lives}/3"
      exit(0)
    end 
  end

  def update
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    puts "----NEW TURN----"
  end

  def new_turn

  end


end 







