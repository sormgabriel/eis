require_relative 'barco_nulo'
class Celda

  def initialize 
    @esta_vacia = true
    @tipo_de_barco = BarcoNulo.new
  end

  def esta_vacia?
    @esta_vacia
  end 

  def recibir_barco(un_barco)
    @esta_vacia = false
    @tipo_de_barco = un_barco
  end

  def contiene_barco?(un_barco)
    un_barco.nombre == @tipo_de_barco.nombre
  end
end
