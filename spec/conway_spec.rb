require 'spec_helper'

describe 'conway' do

  it 'cell can be made alive' do
    cell = Cell.new
    expect(cell.alive).to be true
  end




end
