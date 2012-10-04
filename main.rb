#
# Laboratorio 2. Piedra, Papel, Tijeras, Largaro o Spok
#

class Game

  def initialize()

    @beats = {:rock => [:scissors, :lizard], :paper => [:rock, :spok], :scissors => [:paper, :lizard], :lizard => [:paper, :spok], :spok => [:rock, :scissors]}
  
    
    
    

    play

  end

  def get_player_play()
        player_play = (ARGV.shift || '').to_sym
        if @beats.keys.include? @player_selection
		return player_play
	else
		return nil
	end
  end

  def play()

      	puts "You must type one of these selection: #{@beats.keys.join(', ')}" if !player_play = get_player_play
	
	
    
    if @beats[@computer_selection].include? @player_selection
       puts "Computer win"
    elsif @beats[@player_selection].include? @computer_selection
       puts "You win"
    else
       puts "It's a tie"
    end

  end

end

newGame = Game.new


