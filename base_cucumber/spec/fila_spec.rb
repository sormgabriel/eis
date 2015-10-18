require 'rspec'
require_relative '../model/fila'  
require_relative '../model/destructor'
  describe 'fila' do
    describe 'inicializacion de fila' do
      it 'una fila debe inicializarse sin nigun barco' do
        fila = Fila.new
        expect(fila.esta_vacia?).to be_truthy      
      end
  end
  describe 'ocupacion de fila' do
    let(:destructor){ Destructor.new}
    it 'se coloca en una fila vacia un barco destructor a partir de la celda 1 y ya no esta vacia' do
      fila = Fila.new
      fila.ubicar_barco(destructor, 1)
      expect(fila.esta_vacia?).to be_falsey
    end
    it 'se comprueba si coloco un barco destructor en la fila 1' do
      fila = Fila.new
      fila.ubicar_barco(destructor, 1)
      expect(fila.se_pudo_ubicar?)
    end
  end
end
