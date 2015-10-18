require 'rspec'
require_relative '../model/crucero'

describe 'crucero' do
  describe 'inicializacion' do
    it 'un crucero al inicializarse su tamanho es de uno' do
      crucero = Crucero.new
      expect(crucero.tamanho).to eq 2
    end


  end


end
