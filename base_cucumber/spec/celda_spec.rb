require 'rspec'
require_relative '../model/celda'  

  describe  'celdas' do

    describe 'inicializacion de celda' do

      it 'una celda debe inicializarse vacia' do
        celda = Celda.new
        expect(celda.esta_vacia?).to be_truthy          
      end

  end



end
