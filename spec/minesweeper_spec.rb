require 'rspec'
require 'minesweeper'



describe "Game" do
  subject(:game) { MinesweeperGame.new }
  describe "lose" do
    it "ends game if mine revealed" do
      pos = [0,0]
      game.board[pos].set_as_mine!
      game.board.reveal(pos)
      expect(game.lose?).to be true
    end
  end
end
