class Tablero

  def initialize
    
    @filas = {"A" => Fila.new, "B" => Fila.new, "C" => Fila.new, "D" => Fila.new, "E" => Fila.new,
              "F" => Fila.new, "G" => Fila.new, "H" => Fila.new, "I" => Fila.new, "J" => Fila.new}
  end

  def esta_vacio?
    filas_estan_vacias?
  end

  def filas_estan_vacias?
    @filas.each { |key, fila|
      fila.esta_vacia?}
  end

end

