require 'rspec'
require_relative '../model/celda'  

  describe  'celdas' do

    describe 'inicializacion de celda' do

      it 'una celda debe inicializarse vacia' do
        celda = Celda.new
        expect(celda.esta_vacia?).to be_truthy          
      end

  end
  
    describe 'ocupacion de celda' do

      it 'cuando una celda vacia recibe un barco cambia deja de estar vacia' do
        celda = Celda.new
        celda.recibir_barco
        expect(celda.esta_vacia?).to be_falsey 
      end

    end


end
