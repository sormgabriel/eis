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
      let(:celda){Celda.new}
      it 'cuando una celda vacia recibe un barco cambia deja de estar vacia' do
        celda = Celda.new
        celda.recibir_barco(submarino)
        expect(celda.esta_vacia?).to be_falsey 
      end
      it 'una celda que recibe un submarino debe contener un submarino' do

        expect(celda.contiene_barco?(submarino))
        celda.recibir_barco(submarino) 
      end

    it 'cuando se intenta poner un barco en una celda ya cupada debe lanzar una excepcion' do
      
        celda.recibir_barco(submarino) 
        expect {celda.recibir_barco(submarino)}.to raise_error 
    end 
  end

end
