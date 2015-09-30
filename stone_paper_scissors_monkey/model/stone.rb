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
end
