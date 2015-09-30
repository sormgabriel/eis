class Scissor

  def doesWin?(anElement)
    not anElement.doesWinAgainstScissor?()

  end

  def doesWinAgainstStone?()
    return false
  end
 
  def doesWinAgainstPaper?()
    return true
  end 

  def doesWinAgainstMonkey?()
    return true
  end
end
