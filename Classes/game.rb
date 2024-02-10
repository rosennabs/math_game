require_relative './player'
require_relative './question'

# Manage the overall game flow
class Game
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player_index = 0
  end

  def start
    puts "STARTING GAME ..."

    while !game_over?
      current_player = @players[@current_player_index]
      other_player = @players[1 - @current_player_index]

      puts "#{current_player.name}'s turn:"
      question = Question.new
      puts question.question
      print '>'
      answer = gets.chomp.to_i

      if answer == question.answer
        puts "Correct! #{current_player.name} gains a point."
      else
        puts "Wrong! #{current_player.name} loses a life."
        current_player.lose_life
      end

      display_scores
      switch_turn

    end

    puts "GAME OVER!"
    winner = @players.find {|player| player.lives > 0}
    puts "#{winner.name} wins with #{winner.lives} lives remaining!"

  end


  private

  def game_over?
    @players.any? {|player| player.lives <= 0}
  end

  def display_scores
    puts "Scores:"
    @players.each {|player| puts "#{player.name}: #{player.lives} lives"}
  end

  def switch_turn
    @current_player_index = 1 - @current_player_index
  end

end
