require_relative 'barco_nulo'
require_relative 'celda_ocupada_error'
class Celda

  def initialize 
    @esta_vacia = true
    @tipo_de_barco = BarcoNulo.new
  end

  def esta_vacia?
    @esta_vacia
  end 

  def recibir_barco(un_barco)
      raise CeldaOcupadaError,'la celda ya esta ocupada' unless esta_vacia?
        @tipo_de_barco = un_barco
        @esta_vacia = false
  end

  def contiene_barco?(un_barco)
    un_barco.nombre == @tipo_de_barco.nombre
  end
end
