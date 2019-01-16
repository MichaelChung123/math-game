class Player
    attr_accessor :current_player, :lives

    def initialize(current_player, lives)
        @current_player = current_player
        @lives = lives
    end

end