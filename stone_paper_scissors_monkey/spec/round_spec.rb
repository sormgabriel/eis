
=begin
 segunda Kata consiste en implementar el famoso juego Piedra-Papel-Tijera con algunas variaciones. No hace falta implementar toda una aplicaci?n sino simplemente el modelo de objetos.
La primer variaci?n es Piedra-Papel-Tijera-Mono, a las reglas ya conocidas se agrega:

* Mono gana a papel
* Mono pierde con tijera
* Mono empata con Piedra

Por otro lado aparece el concepto de "partida", una partida es una competencia al mejor de tres rondas. O sea, un jugador para ganar una partida tiene que ganar 2 rondas (an?logo a lo que ocurre en el tenis o el voley con los sets).

 A diferencia de la kata anterior, en este caso el dise?o de las pruebas queda completamente a su cargo.
A modo de gu?a les compartimos algunos ejemplos conceptuales.

Ejemplo 1: din?mica de una ronda
jugador1 juega piedra
jugador2 juega papel
entonces la ronda la gana jugador2


Ejemplo 2: din?mica de una partida
jugador1 gana la primera ronda
jugador2 gana la segunda ronda
entonces hasta el momento no hay ganador de la partida
jugador2 gana la tercera ronda entonces la partida la gana jugador2
=end
require 'rspec' 
require_relative '../model/player'
require_relative '../model/stone'
require_relative '../model/paper'
describe 'Round' do

  let(:player1) { Player.new } 
  let(:player2) { Player.new } 
  let(:stone) {Stone.new}
  let(:paper){Paper.new}
  it 'player1 plays stone and player2 plays paper then player2 win the round' do
    player1.plays(stone)
    player2.plays(paper)
    (player2.doesWin?(player1)).should be_true    
    
  end



end
