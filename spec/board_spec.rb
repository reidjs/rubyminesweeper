require 'rspec'
require 'board'
describe "Board" do
  clearcell = double("Tile", :revealed => false, :mine? => false)
  let(:grid) { Array.new(3) {Array.new(3) { clearcell } } }
  subject(:board) { Board.new(grid) }
  describe "grid" do
    it "sets the grid size to the grid passed in" do
      expect(board.grid.length).to eq(3)
    end
    # context 'hard mode' do
    #   it "increases the number of mines on the board" do
    #     subject(:board) { Board.new(grid) }
    #   end
    # end
    describe "#populate_mines" do
      it "creates the correct number of mines" do
        expect(board.populate_mines.length).to eq(board.number_of_mines)
      end
    end
    describe "#reveal" do
      # pos = [0,0]

      minecell = double("Tile", :reveal => "X")
      board.grid[0,0] = minecell
      board.reveal(pos)
      it "reveals number of neighbor mines if cell is not a mine"

      it "returns mine_found! if cell is a mine"
    end

  end

end
