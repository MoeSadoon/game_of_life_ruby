require 'spec_helper'

describe 'conway' do
  let(:cell) {Cell.new }

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

  # it 'cell can be killed when it has fewer than 2 neighbours' do
  #
  # end




end
