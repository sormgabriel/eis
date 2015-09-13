class Chopper

	def chop(aNumber, anArray)
		if anArray.length == 0
			return -1
		elsif anArray.include?(aNumber)
			return 0
		end
	end
		

end

