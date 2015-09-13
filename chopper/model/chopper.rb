class Chopper

	def chop(aNumber, anArray)
		if anArray.length == 0
			return -1
		else 
			return length_without_element(anArray, aNumber)
			
		end
	end

	def  length_without_element(anArray, aNumber)
	 
		return anArray.reject{|elemnt| element == aNumber}.length
	end
		

end

