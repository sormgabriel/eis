require 'rspec'
require_relative '../model/fila'  

  describe 'fila' do
  
    describe 'inicializacion de fila' do

      it 'una fila debe inicializarse sin nigun barco' do

        fila = Fila.new
        expect(fila.esta_vacia?).to be_truthy      

      end

  end

end
