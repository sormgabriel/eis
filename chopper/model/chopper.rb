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
			return convert_a_sum_of_numbers_to_name(anArray)
		end
	end

	def convert_from_number_to_name(aNumber)

		return @numbers_and_names[aNumber]
	end


	def convert_a_sum_of_numbers_to_name(anArray_of_numbers)
		number_result=anArray_of_numbers.reduce(:+)
		if(number_result>99)
			return "demasiado grande"
		end
		array=number_result.to_s.split(//).map{|number| number.to_i}
		result=convert_from_number_to_name(array.first)
		if(array.length>1)
			array.delete_at(0)
			result=result +","+ convert_from_number_to_name(array.first)

		end
		return result
	end


end
