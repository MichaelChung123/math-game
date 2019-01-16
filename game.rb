class Game
    
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
    end

    def display_turn()

        current_player = @player1
        other_player = @player2
        winner = current_player

        while current_player.lives != 0 && other_player.lives != 0
            chose_player = true

            rand_num1 = rand(1..20)
            rand_num2 = rand(1..20)

            puts "#{current_player.current_player}: What does #{rand_num1} plus #{rand_num2} equal?"

            answer = gets.chomp.to_i

            real_answer = rand_num1 + rand_num2

            puts real_answer

            if answer == real_answer
                puts "#{current_player.current_player} YES! You are correct."
                puts "#{current_player.current_player}: #{current_player.lives}/3 VS #{other_player.current_player}: #{other_player.lives}/3"
                puts "---- NEW TURN ----"
            else
                current_player.lives -= 1
                puts "#{current_player.current_player}: Seriously? No!"
                puts "#{current_player.current_player}: #{current_player.lives}/3 VS #{other_player.current_player}: #{other_player.lives}/3"
                puts "---- NEW TURN ----"
            end

            if current_player == @player1
                current_player = @player2
                other_player = @player1
            else current_player == @player2
                current_player = @player1
                other_player = @player2
            end
            
            if current_player.lives == 0
                winner = other_player
            elsif other_player.lives == 0
                winner = current_player
            end
        end

        puts "#{winner.current_player} wins with a score of #{winner.lives}/3"
        puts "---- GAME OVER ----"
        puts "Good bye!"
    end
    
end