require 'rspec'
require_relative '../model/tablero'

describe 'tablero de batalla naval' do

  describe 'inicializacion del tablero' do
  
    it 'el tablero se inicia vacio' do
      
      tablero = Tablero.new
      expect(tablero.esta_vacio?).to be_truthy 
    end 

  end

end
