require 'spec_helper'

describe 'conway' do
  let(:grid) { Grid.new }
  let(:cell) { Cell.new(grid) }

  it 'cell can be made alive' do
    expect(cell.alive).to be true
  end

  it 'cell can be killed' do
    cell.kill
    expect(cell.alive).to be false
  end

  it 'can spawn at a given position' do
    expect(cell.x).to be 2
    expect(cell.y).to be 2
  end


  it 'grid should include new cells' do
    expect(grid.cells).to include(cell)
  end

  it 'cell should detect a neighbour to the north of it' do
    cell2 = Cell.new(grid,2,3)
    expect(cell.neighbours.count).to eq 1
  end

  it 'cell should detect a neighbour to the northeast of it' do
    cell2 = Cell.new(grid,3,3)
    expect(cell.neighbours.count).to eq 1
  end




end
