class Stone

  def doesWin?(anElement)
    not anElement.doesWinAgainstStone?()

  end

  def doesWinAgainstPaper?()
    return false
  end

  def doesWinAgainstScissor?()
    return true
  end  

  def doesWinAgainstMonkey?()
    return false
  end

  def drawWith(anElement)
    self.doesWin?(anElement) && anElement.doesWin?(self)
  end
end
