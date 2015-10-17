class Fila

  def initialize
    @celdas = Array.new(10)
    @celdas.fill(Celda.new)
#   for i in 0 .. 9
#      @celdas <<  Celda.new
#    end

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
end
