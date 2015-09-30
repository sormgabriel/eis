class Monkey

  def doesWin?(anElement)
    not anElement.doesWinAgainstMonkey?()

  end
  
  def doesWinAgainstScissor?()
    return false
  end

end
