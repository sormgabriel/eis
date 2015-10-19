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
    let(:destructor){Destructor.new}
    let(:tablero){Tablero.new}
    it 'cuando se agrega un barco al tablero deja de estar vacio' do
      tablero.ubicar_barco(destructor, "1A", "horizontal")
      expect(tablero.esta_vacio?).to be_falsey
    end
    it 'se puede ubicar un barco destructor de forma horizontal en un tablero vacio en la fila 1A' do
      tablero.ubicar_barco(destructor, "1A", "horizontal")
      expect(tablero.se_pudo_ubicar_barco?(destructor, "1A", "horizontal")).to be_truthy
    end 
    it 'se puede ubicar un barco destructor de forma vertical en un tablero vacio en la fila 1A' do
      tablero.ubicar_barco(destructor, "1A", "vertical")
      expect(tablero.se_pudo_ubicar_barco?(destructor, "1A", "vertical")).to be_truthy
    end
    it 'cuando se pone un barco en una posicion ya ocupada deberia lanzar un error' do
      tablero.ubicar_barco(destructor, "1A", "vertical")
      expect{tablero.ubicar_barco(destructor, "1A", "vertical")}.to raise_error
    end
    
  end

end
