require "pry"

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
  attr_accessor :case_state
  def initialize
    #TO DO doit régler sa valeur, ainsi que son numéro de case
  	@case_state = " "
  end
  
  def to_s
    #TO DO : doit renvoyer la valeur au format string
  end

end

class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
    attr_accessor :grid_hash, 
  				:a1_case, :b1_case, :c1_case, 
  				:a2_case, :b2_case, :c2_case, 
  				:a3_case, :b3_case, :c3_case

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
    @grid_hash = Hash.new
    @grid_case = {a1: 6, b1: 1, c1: 8,
                  a2: 7, b2: 5, c2: 3, 
                  a3: 2, b3: 9, c3: 4}
    @a1_case = BoardCase.new
    @b1_case = BoardCase.new
    @c1_case = BoardCase.new
    @a2_case = BoardCase.new
    @b2_case = BoardCase.new
    @c2_case = BoardCase.new
    @a3_case = BoardCase.new
    @b3_case = BoardCase.new
	@c3_case = BoardCase.new

  end


  def to_s
  #TO DO : afficher le plateau

  end

  def play
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  end

  def victory?
    #TO DO : qui gagne ?
  end

class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
  attr_accessor :name, :player_array
  
  def initialize(name="")
    #TO DO : doit régler son nom, sa valeur, son état de victoire
    @name = name
	@player_array = []
  end

class Game
    #TO DO : créé 2 joueurs, créé un board
    attr_reader :game_turn, :player1, :player2, :grid, :game_state, :board_array, :error, :end
  def initialize
    @game_turn = 0
    @player1 = Player.new
    @player2 = Player.new
    @grid = Board.new
    @game_state = "playing"
    @board_array = []
    @error = false
	@end = false
  end

  def go
    # TO DO : lance la partie
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  	self.ask_name
    loop do
      puts "List of players: #{@player1.name} vs #{@player2.name}"
      @grid.display_board
      self.ask_move
      answer = ""
      while (answer != "Y")
        print "Play again? (Y/n): "
        answer = gets.chomp
        answer = answer
        break if answer == "n"
      end
      break if answer == "n"
      @player1.player_array = []
      @player2.player_array = []
      player2_name = @player1.name
      @player1.name = @player2.name
      @player2.name = player2_name
      @board_array = []
      @grid = Board.new
      @game_state = "playing"
      @game_turn = 0
      @end = false
	end
  end
end