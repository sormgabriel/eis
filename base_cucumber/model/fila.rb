require_relative 'celda'
class Fila

  def initialize
    @celdas = Array.new(10)
    @celdas.fill(Celda.new)
    @se_pudo_ubicar = true
  end

  def esta_vacia?
     celdas_estan_vacias?
  end

  def celdas_estan_vacias?
    todas_vacias=true
    @celdas.each do |celda|
        todas_vacias = todas_vacias && celda.esta_vacia?
      end
    return todas_vacias
  end

  def ocupar_celda(un_barco, un_numero_de_celda)
    @celdas[un_numero_de_celda].recibir_barco(un_barco)
  end

  def ubicar_barco(un_barco,un_numero_de_celda)
    @se_pudo_ubicar = true
    for i in 1..un_barco.tamanho
      begin
        ocupar_celda(un_barco, i-1)
        @se_pudo_ubicar=@se_pudo_ubicar && @celdas[i-1].contiene_barco?(un_barco)
      rescue CeldaOcupadaError
      end
    end 
  end

  def se_pudo_ubicar?
    return @se_pudo_ubicar
  end
end
