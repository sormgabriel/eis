require 'rspec'
require_relative '../model/batalla_naval'
describe 'Batalla Naval' do

  describe 'inicializacion de juego' do
    
    it 'cuando se inicia el juego el tablero no debe contener barcos' do
      batalla_naval = BatallaNaval.new
      expect(batalla_naval.el_tablero_esta_vacio?).to be_truthy
    end


  end


end
