#
# Laboratorio 2. Piedra, Papel, Tijeras, Largaro o Spok
#

class Game

  def initialize()

    @beats = {:rock => [:scissors, :lizard], :paper => [:rock, :spok], :scissors => [:paper, :lizard], :lizard => [:paper, :spok], :spok => [:rock, :scissors]}
  
    @player_selection = (ARGV.shift || '').to_sym
    @computer_selection = :spok
    
    if !@beats.keys.include? @player_selection
      puts "You must type one of these selection: #{@beats.keys.join(', ')}"
      return
    end

    play

  end

  def play()
    
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


