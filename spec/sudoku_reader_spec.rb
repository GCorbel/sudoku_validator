require_relative '../lib/sudoku_reader'

describe SudokuReader do
  context "with the valid grid" do
    it "give lines" do
      reader = SudokuReader.new('valid_complete.sudoku')
      grid = [[8,5,9,6,1,2,4,3,7],
              [7,2,3,8,5,4,1,6,9],
              [1,6,4,3,7,9,5,2,8],
              [9,8,6,1,4,7,3,5,2],
              [3,7,5,2,6,8,9,1,4],
              [2,4,1,5,9,3,7,8,6],
              [4,3,2,9,8,1,6,7,5],
              [6,1,7,4,2,5,8,9,3],
              [5,9,8,7,3,6,2,4,1]]
      expect(reader.lines).to eq grid
    end
  end

  context "with the invalid complete grid" do
    it "give lines" do
      reader = SudokuReader.new('invalid_complete.sudoku')
      grid = [[8,5,9,6,1,2,4,3,7],
              [7,2,3,8,5,4,1,6,9],
              [1,6,4,3,7,9,5,2,8],
              [9,8,6,1,4,7,3,5,2],
              [3,7,5,8,6,2,9,1,4],
              [2,4,1,5,9,3,7,8,6],
              [4,3,2,9,8,1,6,7,5],
              [6,1,7,4,2,5,8,9,3],
              [5,9,8,7,3,6,2,4,1]]
      expect(reader.lines).to eq grid
    end
  end
end