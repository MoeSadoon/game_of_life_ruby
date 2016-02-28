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




end
