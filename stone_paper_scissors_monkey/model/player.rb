class Player
  
  attr_accessor :element

  def plays(anElement)
    @element = anElement
  end

  def doesWin?(anotherPlayer)
     @element.doesWin?(anotherPlayer.element)
  end

  def doesDrawWith?(anotherPlayer)
    @element.drawWith(anotherPlayer.element)
  end
 end
