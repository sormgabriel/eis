require 'rspec'
require_relative '../model/stone'
require_relative '../model/paper'

describe 'Behaviour of the elements' do

  let (:paper){Paper.new}
  let (:stone){Stone.new}

  it 'the paper wins the stone' do
    (paper.doesWin?(stone)).should be_truthy
  end
end



