class Calculator
	def initialize(first_number,second_number,operation)
		@first_number = first_number
		@second_number = second_number
		@operation = operation
	end
	
	def calculate()
		result = case @operation
		when "add" then add()
		when "substract" then substract()
		when "multiply" then multiply()
		when "divide" then divide()
		end
		result
	end

	def add()
		@first_number + @second_number
	end

	def substract()
		@first_number - @second_number
	end

	def multiply()
		@first_number * @second_number
	end

	def divide()
		@first_number / @second_number
	end

end
