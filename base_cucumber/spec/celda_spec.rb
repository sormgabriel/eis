require 'rspec'
require_relative '../model/celda'  
require_relative '../model/submarino'
  describe  'celdas' do

    describe 'inicializacion de celda' do

      it 'una celda debe inicializarse vacia' do
        celda = Celda.new
        expect(celda.esta_vacia?).to be_truthy          
      end

  end
  
    describe 'ocupacion de celda' do
      let(:submarino){Submarino.new}
      it 'cuando una celda vacia recibe un barco cambia deja de estar vacia' do
        celda = Celda.new
        celda.recibir_barco(submarino)
        expect(celda.esta_vacia?).to be_falsey 
      end
      it 'una celda vacia que recibe un submarino debe contener un submarino' do

        celda = Celda.new
        celda.recibir_barco(submarino)
        expect(celda.contiene_barco?(submarino))
        
    end
  end

end
