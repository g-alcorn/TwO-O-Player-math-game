class Game
  attr_accessor :turn, :run_game

  def initialize()
    @turn = 1
  end

  def run_game(game, player_one, player_two)

    while (player_one.lives > 0 && player_two.lives > 0)
      correct_answer = "Correct answer!\n\n"
      wrong_answer = "Wrong answer!\n\n"
      value_one = rand(20)
      value_two = rand(20)
      answer = value_one + value_two
      player_answer = 0
      current_player = 0

      puts "--- NEW TURN ---"
      puts "Current turn: #{game.turn}"
      puts "What is #{value_one} + #{value_two}?"

      if turn % 2 == 0
        current_player = 2
        print "Player two: "
        player_answer = $stdin.gets.chomp.to_i
      elsif turn % 2 == 1
        current_player = 1
        print "Player one: "
        player_answer = $stdin.gets.chomp.to_i
      end #of conditional

      puts "The actual answer is: #{answer}"

      if (player_answer - answer) == 0
        puts correct_answer
      else
        puts wrong_answer
        puts "current player is #{current_player}"
        if current_player == 1
          player_one.lives -= 1
        elsif current_player == 2
          player_two.lives -= 1
        end #of inner conditional
      end #of conditional

      puts "P1: #{player_one.lives}/3 lives remaining"
      puts "P2: #{player_two.lives}/3 lives remaining\n\n"
      game.turn += 1
    end #of while

    puts "--- END OF GAME ---"
    if player_one.lives == 0
      puts "Player one loses! Player two wins with #{player_two.lives} remaining!"
    else
      puts "Player two loses! Player one wins with #{player_one.lives} remaining!"
    end

    puts "See you next time!"
  end #of run_game
end #of Game
