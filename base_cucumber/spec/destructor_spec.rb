require 'rspec'
require_relative '../model/destructor'
describe 'destructor' do
  describe 'inicializacion' do
    it 'un barco destructor tiene un tamanho de tres' do
      destructor = Destructor.new
      expect(destructor.tamanho).to eq 3
    end

  end

end


