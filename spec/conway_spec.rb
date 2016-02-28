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

  it 'cell should detect a neighbour to the east of it' do
    cell2 = Cell.new(grid,3,2)
    expect(cell.neighbours.count).to eq 1
  end

  it 'cell should detect a neighbour to the south of it' do
    cell2 = Cell.new(grid,2,1)
    expect(cell.neighbours.count).to eq 1
  end

  it 'cells with less than two neighbours because of underpopulation' do
    cell2 = Cell.new(grid,2,3)
    cell.end_round
    expect(cell.alive).to be false
    expect(grid.cells).not_to include(cell)
  end

  it 'cells with two or more neighbours live onto next round' do
    cell2 = Cell.new(grid,2,3)
    cell3 = Cell.new(grid,3,3)
    cell.end_round
    expect(cell.alive).to be true
    expect(grid.cells).to include(cell)
  end

  it 'cells with more than three neighbours dies of overcrowding' do
    cell2 = Cell.new(grid,2,3)
    cell3 = Cell.new(grid,3,3)
    cell2 = Cell.new(grid,3,2)
    cell3 = Cell.new(grid,2,1)
    cell.end_round
    expect(cell.alive).to be false
    expect(grid.cells).not_to include(cell)
  end


end
