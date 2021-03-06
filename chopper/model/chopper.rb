class Chopper
	
	def initialize
    	@numbers_and_names = {0 => "cero", 1 => "uno", 2 => "dos",
				3 => "tres", 4 => "cuatro", 5 => "cinco",
				6 => "seis", 7 => "siete", 8 => "ocho",
				9 => "nueve"}
        
	end 

	 def chop(num,an_array)
		if an_array.index(num) == nil
			return -1
		else
			return	 an_array.index(num)
		end
	end


	def sum (anArray)
		result=""
		if anArray.length == 0
			return "vacio"
		else
			return convert_a_sum_of_numbers_to_name(anArray)
		end
	end

	def convert_from_number_to_name(aNumber)

		return @numbers_and_names[aNumber]
	end


	def convert_a_sum_of_numbers_to_name(anArray_of_numbers)
		result=""
		number_result=anArray_of_numbers.reduce(:+)
		if(number_result>99)
			return "demasiado grande"
		else
		result=convert_result(number_result)
		end
		return result
	end

	def convert_last_part(anArray)
		result=""
		if(anArray.length>1)
			
			result=","+ convert_from_number_to_name(anArray.last)
		end

		return result
	end

	def convert_result(aNumber)
		result=""
		array=aNumber.to_s.split(//).map{|number| number.to_i}
		result=convert_from_number_to_name(array.first)
		result=result + convert_last_part(array)
		return result
	end	



end
