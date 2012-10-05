#
# Laboratorio 2. Piedra, Papel, Tijeras, Largaro o spock
#

class Game

  def initialize()

    @beats = {:rock => [:scissors, :lizard], :paper => [:rock, :spock], :scissors => [:paper, :lizard], :lizard => [:paper, :spock], :spock => [:rock, :scissors]}

    # obtenemos la selección del jugador
    @player_selection = (ARGV.shift || '').to_sym

    # comprobamos que la selección del jugador sea correcta
    if !@beats.keys.include? @player_selection
      puts "You must type one of these selection: #{@beats.keys.join(', ')}"
    else
      # lanzamos el juego
      play
    end
  end

  def play()

    computer_selection = @beats.keys.sample

    puts "Your selection:     #{@player_selection}"
    puts "Computer selection: #{computer_selection}"
    
    if @beats[computer_selection].include? @player_selection
      puts "Computer won!"
    elsif @beats[@player_selection].include? computer_selection
      puts "You won!"
    else
      puts "Is a draw!"
    end

  end
end

newGame = Game.new


