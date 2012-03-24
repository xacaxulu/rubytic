class TicTacToe

   def new
    start_query
  end

  def initialize
    @board = {
    "1"=>"1","2"=>"2","3"=>"3",
    "4"=>"4","5"=>"5","6"=>"6",
    "7"=>"7","8"=>"8","9"=>"9"
     }
     
    @rules = [
	    ['1','2','3'],
	    ['1','5','9'],
	    ['1','4','7'],
 
	    ['3','5','7'],
	    ['3','6','9'],
	    ['7','8','9'],
 
  	  ['4','5','6'],
  	  ['2','5','8']
     ]
  end
  
  def make_board
    puts " #{@board["1"]} | #{@board["2"]} | #{@board["3"]}"
    puts "------------"
    puts " #{@board["4"]} | #{@board["5"]} | #{@board["6"]}"
    puts "------------"
    puts " #{@board["7"]} | #{@board["8"]} | #{@board["9"]}"
    puts ""
  end
  
  def start_query
    puts "===================================================="
    puts "Welcome to Ruby TicTacToe!"
    puts "Please enter your name and strike return:"
    puts "===================================================="
    @user_name = gets.chomp!
    puts "===================================================="
    puts "Hi #{@user_name}! Would you like to go first [Y,n] ?"
    puts "===================================================="
    answer_gate(gets.chomp)
  end
  
  def answer_gate(str)
    if str == "Y"
      puts ""
      puts "Select a square by typing the number and strike return:"
      puts ""
      @answer = str
      square_select_user
    elsif str == "n"
      puts ""
      puts "Thinking........."
      @answer = str
      @board["5"] == "O"
      square_select_user
    end 
    while @answer != "Y" || "n"
      try_query
    end
  end
  
  def square_select_user
    make_board
    has_been_selected?(gets.chomp)
  end 

  def matches_number?(str)
    pattern = /^[1-9]$/
    !pattern.match(str).nil?
  end
    
  def is_numeric?(str)
    if matches_number?(str)
      @selected_square_user = str
      make_move_user
    else
      try_query_number
    end      
  end
  
@game = TicTacToe.new
@game.new
end
