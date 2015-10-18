require 'rspec'
require_relative '../model/submarino'

describe 'submarino' do
  describe 'inicializacion' do
    it 'un submarino al inicializarse su tamanho es de uno' do
      submarino = Submarino.new
      expect(submarino.tamanho).to eq 1
    end


  end


end
