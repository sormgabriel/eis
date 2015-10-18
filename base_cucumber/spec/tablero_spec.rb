require 'rspec'
require_relative '../model/tablero'
require_relative '../model/destructor'
describe 'tablero de batalla naval' do

  describe 'inicializacion del tablero' do
  
    it 'el tablero se inicia vacio' do
      
      tablero = Tablero.new
      expect(tablero.esta_vacio?).to be_truthy 
    end 

  end
  describe 'ocupacion del tablero' do
  
    it 'cuando se agrega un barco al tablero deja de estar vacio' do

      tablero = Tablero.new 
      destructor = Destructor.new
      tablero.ubicar_barco(destructor, "1A", "horizontal")
      expect(tablero.esta_vacio?).to be_falsey
    end
  end
end
