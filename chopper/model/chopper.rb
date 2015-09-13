class Chopper
	
	def initialize
    	@numbers_and_names = {0 => "cero", 1 => "uno", 2 => "dos",
				3 => "tres", 4 => "cuatro", 5 => "cinco",
				6 => "seis", 7 => "siete", 8 => "ocho",
				9 => "9"}
        
	end 

	 def chop(num,list)
		if list.length == 0
			return -1
		else
		        return	 length_without_element(num,list)
		end
	end

	def length_without_element(num,list)
		return list.reject{|element| element == num}.length
	end


	def sum (anArray)
		result=""
		if anArray.length == 0
			return "vacio"
		else
			int_array= convert_number_greater_than_nine_to_pair(anArray.reduce(:+))
			result= self.convert_from_number_to_name(int_array.first)
                        int_array.delete_at(0)
			if(int_array.length>0)	
				result = result +","
				result=	result+ self.convert_from_number_to_name(int_array.last)
			end
			return result
		end
	end

	def convert_from_number_to_name(aNumber)

		return @numbers_and_names[aNumber]
	end

	def convert_number_greater_than_nine_to_pair(anNumber)
		anNumber.to_s.split(//).map{|number| number.to_i}
	end
end
