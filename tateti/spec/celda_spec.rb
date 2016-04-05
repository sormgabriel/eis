# Consigna: 
#  Escribir la clase Chopper de manera tal que todas las preubas pase. 
#  Hacer pasar las pruebas de 1 por vez utilizando TDD a integración continua
#
# Una vez completa la tarea, generar un TAG en el repositorio y subir a alfred el link a dicho TAG
# Fecha de entrega 13 de Septiembre

require 'rspec' 
require_relative '../model/celda'

describe 'Celda' do

	let(:celda) { Celda.new }
	let(:celda2){Celda.new}  
	let(:equis) {Elemento.new('equis')}
        let(:circulo){Elemento.new}('circulo')

	it 'celda vacia deberia devolver 0 cantidades de elementos' do
		expect(celda.cantidad_de_elementos).to eq 0
	end

	it 'celda con una equis deberia devolver 1 cantidad de elementos' do
		celda.addElement(equis)
  		expect(celda.cantidad_de_elementos).to eq 1 
	end

	it 'celda con un circulo deberia devolver 1 cantidad de elementos' do
		celda2.addElement(circulo)
                expect(celda.cantidad_de_elementos).to eq 1 
	end

	it 'una celda con una equis esta llena y no puede admitir otra equis' do
		celda.addElement(equis)
		expect(celda.cantidad_de_elementos).to eq 1
	end

	it 'una celda con un criculo esta llena y no puede admitir una equis ni un circulo' do
		celda2.addElement(equis)
		celda2.addElement(circulo)
		expect(celda2.cantidad_de_elementos).to eq 1
	end

	it 'un elemento introducido en una celda no se puede modificar' do
		celda.addElement(circulo)
		expect(celda.elemento).to eq 'equis'
	end

end
