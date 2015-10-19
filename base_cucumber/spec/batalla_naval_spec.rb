require 'rspec'
require_relative '../model/batalla_naval'
describe 'Batalla Naval' do

  describe 'inicializacion de juego' do
    
    it 'cuando se inicia el juego el tablero no debe contener barcos' do
      batalla_naval = BatallaNaval.new
      expect(batalla_naval.el_tablero_esta_vacio?).to be_truthy
    end


  end
  describe 'agregando barcos' do
      let(:batalla_naval){BatallaNaval.new}

    it 'se puede ubicar un barco destructor en la posicion 1A de forma horizontal' do
      batalla_naval.poner_barco("destructor","1A","horizontal")
      expect(batalla_naval.se_pudo_ubicar_barco?("destructor","1A","horizontal")).to be_truthy
    end

    it 'al ubicar un destructor en una posicion ya ocupada por un crucero debe lanzar una excepcion' do
      batalla_naval.poner_barco("crucero","4A","vertical") 
      expect{batalla_naval.poner_barco("destructor","4A","vertical")}.to raise_error 
      
    end
  end


end
