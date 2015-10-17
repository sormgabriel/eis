require_relative '../../model/batalla_naval.rb'
Given(/^un tablero vacio$/) do
  @batalla_naval = BatallaNaval.new
end

When(/^ubico un barco destructor en la posicion (\d+)A$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^barco ubicado exitosamente$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^un barco destructor ubicado horizontalmente en la posicion (\d+)A$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^un barco destructor ocupa cuatro casilleros$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^intento ubicar una lancha en la posicion (\d+)A$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^no se puede ubicar un barco en una posicion ya ocupada$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^un tablero que va de la posicion (\d+) a la (\d+) y de la A a la J$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^intento ubicar un barco destructor horizontalmente desde la posicion (\d+)A a la (\d+)A$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^no se puede ubicar el barco en esa posicion fuera del tablero$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
