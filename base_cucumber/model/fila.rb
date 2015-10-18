require_relative 'celda'
class Fila

  def initialize
    @celdas = Array.new(10)
    @celdas.fill(Celda.new)
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

  def ocupar_celda(un_numero_de_celda)
    @celdas[un_numero_de_celda].recibir_barco
  end

  def ubicar_barco(un_barco,un_numero_de_celda)
    for i in 1..un_barco.tamanho
      ocupar_celda(i-1)
    end 
  end
end
