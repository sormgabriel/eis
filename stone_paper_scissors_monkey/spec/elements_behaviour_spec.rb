require 'rspec'
require_relative '../model/stone'
require_relative '../model/paper'
require_relative '../model/scissor'
describe 'Behaviour of the elements' do

  let (:paper){Paper.new}
  let (:stone){Stone.new}
  let (:scissor) {Scissor.new}

  it 'the paper wins the stone' do
    (paper.doesWin?(stone)).should be_truthy
  end

  it 'the stone wins the scissor' do
    (stone.doesWin?(scissor)).should be_truthy
  end

  it 'the scissor wins the paper' do
    (scissor.doesWin?(paper)).should be_truthy
  end

  it 'the stone does not  defeat the paper' do
     (stone.doesWin?(paper)).should be_falsey
  end

  it 'the scissor does not defeat the stone' do
     (scissor.doesWin?(stone)).should be_falsey
  end 


end



