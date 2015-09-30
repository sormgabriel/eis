class Paper

  def doesWin?(aElement)
    not aElement.doesWinAgainstPaper?()
  end

  def doesWinAgainstStone?()
    return true
  end
end
