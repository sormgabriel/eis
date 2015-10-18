require_relative 'fila'
class Tablero

  def initialize
    
    @filas = {"A" => Fila.new, "B" => Fila.new, "C" => Fila.new, "D" => Fila.new, "E" => Fila.new,
              "F" => Fila.new, "G" => Fila.new, "H" => Fila.new, "I" => Fila.new, "J" => Fila.new}
  end

  def esta_vacio?
    filas_estan_vacias?
  end

  def filas_estan_vacias?
    estan_vacias = true
    @filas.each { |key, fila|
      estan_vacias= estan_vacias &&  fila.esta_vacia?}
    return estan_vacias
  end

  def ubicar_barco(un_barco, una_posicion_str, una_orientacion_str)
    if una_orientacion_str == "horizontal"  
      ubicar_barco_en_forma_horizontal(un_barco, una_posicion_str)
    else
      ubicar_barco_en_forma_vertical(un_barco, una_posicion_str)
    end     
     
  end

  def ubicar_barco_en_forma_horizontal(un_barco, una_posicion_str)
    ubicar_barco_en_fila(@filas[una_posicion_str[1]],un_barco,una_posicion_str[0].to_i)
  end

  def ubicar_barco_en_fila(una_fila, un_barco, un_numero_de_celda)
    una_fila.ubicar_barco(un_barco,un_numero_de_celda)
    
  end

  def ubicar_barco_en_forma_vertical(un_barco, una_posicion_str)
    ubicar_barco_en_columna(un_barco, una_posicion_str)      
  end

  def ubicar_barco_en_columna(un_barco, una_posicion_str)
      fila_id=una_posicion_str[1]	
      for i in 1..un_barco.tamanho
          @filas[fila_id].ocupar_celda(una_posicion_str[0].to_i)
          fila_id= fila_id.next
      end
  end

end

