class Celda

  def initialize 
    @esta_vacia = true
  end

  def esta_vacia?
    @esta_vacia
  end 

  def recibir_barco
    @esta_vacia = false
  end
end
