class Paper

  def doesWin?(aElement)
    not aElement.doesWinAgainstPaper?()
  end

  def doesWinAgainstStone?()
    return true
  end

  def doesWinAgainstScissor?()
    return false
  end
end
