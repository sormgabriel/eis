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
  
    it 'una fila vacia pone un barco destructor a partir de la celda 1 y ya no esta vacia' do
    
      fila = Fila.new
      destructor = Destructor.new
      fila.ubicar_barco(destructor, 1)
      expect(fila.esta_vacia?).to be_falsey

    end

  end
end
