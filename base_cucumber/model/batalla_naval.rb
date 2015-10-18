require_relative 'tablero'
require_relative 'destructor'
require_relative 'submarino'
require_relative 'crucero'

class BatallaNaval

  def initialize
    @tablero = Tablero.new
    @barcos = {"destructor" => Destructor.new, "crucero" => Crucero.new, "submarino" => Submarino.new }
    @se_pudo_ubicar=false
  end
  
  def crear_barco(un_tipo_de_barco_str)
    @barcos[un_tipo_de_barco_str]
  end

  def el_tablero_esta_vacio?
    @tablero.esta_vacio?    
  end

  def poner_barco(un_tipo_de_barco_str, una_posicion_str, una_orientacion_str)
    barco=crear_barco(un_tipo_de_barco_str)
    poner_barco_en_tablero(barco, una_posicion_str, una_orientacion_str)
  end

  def poner_barco_en_tablero(un_barco, una_posicion_str, una_orientacion_str)
    @tablero.ubicar_barco(un_barco, una_posicion_str, una_orientacion_str)
  end

  def se_pudo_ubicar_barco?(un_barco_str, una_posicion_str, una_orientacion_str)
    un_barco=crear_barco(un_barco_str)
    @tablero.se_pudo_ubicar_barco?(un_barco, una_posicion_str, una_orientacion_str)
  end
end
