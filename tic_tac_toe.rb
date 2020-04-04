class TicTacToe
  attr_accessor :board, :running, :current_player, :choice

  def initialize
    @board = Array.new(3) {Array.new(3, "-")}
    @running = true
    @current_player = "X"
    @choice = nil
    self.print_board
    puts "Hello! Welcome to tic-tac-toe! a-c are top to bottom rows, and the cells are 1, 2, and 3"
   end

   def x_choice
    "X"
   end

   def o_choice
    "O"
   end

   def reset 
    @board = Array.new(3) {Array.new(3, "-")}
   end

   def x_prompt
    p "X's move"
   end

   def o_prompt
    p "O's move"
   end

   def running? 
    @running
   end

   def end_game
    @running = false
   end

   def print_board
    p @board[0]
    p @board[1]
    p @board[2]
   end

   def switch_player
    if @current_player == "X"
      @current_player = "O"
    else
      @current_player = "X"
    end
   end

   def get_choice
    @choice = gets.chomp.downcase
   end

   def process_choice
    valid_choices = ["a1", "a2", "a3",
                     "b1", "b2", "b3",
                     "c1", "c2", "c3"]
    case @choice
      when "exit"
        return @running = false
      when "a1"
        @board[0][0] = @current_player if @board[0][0] == not_taken?
      when "a2"
        @board[0][1] = @current_player if @board[0][1] == not_taken?
      when "a3"
        @board[0][2] = @current_player if @board[0][2] == not_taken?
      
      when "b1"
        @board[1][0] = @current_player if @board[1][0] == not_taken?
      when "b2"
        @board[1][1] = @current_player if @board[1][1] == not_taken?
      when "b3"
        @board[1][2] = @current_player if @board[1][2] == not_taken?

      when "c1"
        @board[2][0] = @current_player if @board[2][0] == not_taken?
      when "c2"
        @board[2][1] = @current_player if @board[2][1] == not_taken?
      when "c3"
        @board[2][2] = @current_player if @board[2][2] == not_taken?
      else
        p "Invalid move!"
    end
  end

  def not_taken?
    "-"
  end

  def check_win
    if @board[0] == ["X", "X", "X"] || @board[0] == ["O", "O", "O"] ||
       @board[1] == ["X", "X", "X"] || @board[1] == ["O", "O", "O"] ||
       @board[2] == ["X", "X", "X"] || @board[2] == ["O", "O", "O"] ||
       return p "#{current_player} won!"
    end
  end

   def game_loop
    while self.running?
      self.x_prompt
      self.get_choice
      self.process_choice
      self.print_board
      self.check_win
      self.switch_player
      break if @running == false
      self.o_prompt
      self.get_choice
      self.process_choice
      self.print_board
      self.switch_player
    end
   end
end

game = TicTacToe.new
game.game_loop