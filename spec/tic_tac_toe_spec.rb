require './lib/tic_tac_toe.rb'

describe "tic_tac_toe class" do
  describe "#check_win" do
    it "current player (default X) wins when A-Row win condition met" do
      game = TicTacToe.new
      game.board[0] = ["X","X","X"]
    expect(game.check_win).to eql(game.play_again?)
    end
    it "current player (default X) wins when B-Row win condition met" do
      game = TicTacToe.new
      game.board[1] = ["X","X","X"]
    expect(game.check_win).to eql(game.play_again?)
    end
    it "current player (default X) wins when C-Row win condition met" do
      game = TicTacToe.new
      game.board[2] = ["X","X","X"]
    expect(game.check_win).to eql(game.play_again?)
    end
    
  end
end