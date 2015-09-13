class Chopper

	def chop(aNumber, anArray)
		if anArray.length == 0
			return -1
		else 
			return length_without_element(anArray, aNumber)
			
		end
	end

	def  length_without_element(anArray, aNumber)
	 
		return anArray.reject{|element| element == aNumber}.length
	end
		
	def sum(anArray)
		if anArray.length == 0
			return "vacio"
		end
	end
end

