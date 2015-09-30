=begin
-the monkey defeats the paper
-scissor defeats the monkey
-monkey and stone draw
=end
require 'rspec'
require_relative '../model/monkey'
require_relative '../model/paper'
require_relative '../model/scissor'
describe 'Behaviour of the monkey' do

  let (:paper){Paper.new}
  let (:stone){Stone.new}
  let (:scissor) {Scissor.new}
  let (:monkey) {Monkey.new}

  it 'the monkey defeats the paper' do
    (monkey.doesWin?(paper)).should be_truthy
  end

  it 'the scissor defeat the monkey' do
    (scissor.doesWin?(monkey)).should be_truthy
  end


end



