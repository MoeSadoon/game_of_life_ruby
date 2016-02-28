require 'spec_helper'

describe 'conway' do

  it 'cell can be made alive' do
    cell = Cell.new
    expect(cell.alive).to be true
  end

  it 'cell can be killed' do
    cell = Cell.new
    cell.kill
    expect(cell.alive).to be false
  end




end
