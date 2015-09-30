class Monkey

  def doesWin?(anElement)
    not anElement.doesWinAgainstMonkey?()
  end
  
  def doesWinAgainstScissor?()
    return false
  end

  def drawWith(anElement)
    return (anElement.doesWin?(self) && self.doesWin?(anElement))
  end

  def doesWinAgainstStone?()
    return false
  end

end
