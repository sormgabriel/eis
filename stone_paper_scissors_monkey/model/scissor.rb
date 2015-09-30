class Scissor

  def doesWin?(anElement)
    not anElement.doesWinAgainstScissor?()

  end

  def doesWinAgainstStone?()
    return false
  end
  
end
