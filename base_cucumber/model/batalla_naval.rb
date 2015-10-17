class BatallaNaval

  def initialize
    @tablero = Tablero.new
  end

  def el_tablero_esta_vacio?
    @tablero.esta_vacio?    
  end
end
