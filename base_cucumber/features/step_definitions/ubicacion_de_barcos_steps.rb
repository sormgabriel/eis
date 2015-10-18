require_relative '../../model/batalla_naval'
Given(/^un tablero vacio$/) do
  @batalla_naval = BatallaNaval.new
end

When(/^ubico un barco (.*) en la posicion (.*) de forma (.*)$/) do |destructor, posicion, horizontal|
  @batalla_naval.poner_barco(destructor, posicion, horizontal )
end

Then(/^barco (.*) ubicado en la posicion (.*) de forma (.*) exitosamente$/) do |destructor, posicion,horizontal|
  @batalla_naval.se_pudo_ubicar_barco?(destructor,posicion, horizontal)
end

