=begin
-the monkey defeats the paper
-scissor defeats the monkey
-monkey and stone draw
=end
require 'rspec'
require_relative '../model/monkey'
require_relative '../model/paper'
require_relative '../model/scissor'
require_relative '../model/stone'
describe 'Behaviour of the monkey' do

  let (:paper){Paper.new}
  let (:stone){Stone.new}
  let (:scissor) {Scissor.new}
  let (:monkey) {Monkey.new}

  it 'the monkey defeats the paper' do
    (monkey.doesWin?(paper)).should be_truthy
  end

  it 'the scissor defeats the monkey' do
    (scissor.doesWin?(monkey)).should be_truthy
  end

  it 'monkey and stone draw' do
    (monkey.drawWith(stone)).should be_truthy
  end

  it 'the paper does not defeat the monkey' do
    (paper.doesWin?(monkey)).should be_falsey
  end

  it 'the monkey does no defeat the scissor' do
    (monkey.doesWin?(scissor)).should be_falsey
  end
end



