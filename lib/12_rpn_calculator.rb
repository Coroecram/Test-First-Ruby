class RPNCalculator
def initialize
	@calculator = []
end
	def plus
		if @calculator.size >= 2
			sum = @calculator.pop + @calculator.pop
			@calculator << sum
		else
			fail
		end
	end
	
	def push(item)
		@calculator << item
	end
	
	def minus
		if @calculator.size >= 2
			second = @calculator.pop
			first = @calculator.pop
			difference = first - second
			@calculator << difference
		else
			fail
		end
	end
	
	def divide
		if @calculator.size >= 2
			second = @calculator.pop
			first = @calculator.pop
			quotient = first.to_f / second
			@calculator << quotient
		else
			fail
		end
	end
	
	def times
		if @calculator.size >= 2
			product = @calculator.pop * @calculator.pop
			@calculator << product
		else
			fail
		end
	end
	
	def value
		@calculator[-1]
	end
	
	def tokens(input)
	@token = []
		input.each_char do |s|
			if s =~ /\d/
				@token << s.to_i
			elsif s == "+" || s == "-" || s == "/" || s == "*"
				@token << s.to_sym
			end
		end
		return @token
	end
	
def evaluate(x)
	tokens(x).each do |item|
			if item == :+
				self.plus
			elsif item == :-
				self.minus
			elsif item == :/
				self.divide
			elsif item == :*
				self.times
			else
				push(item)
			end
	end
	return value
end
			
def fail
	raise "calculator is empty"
end

end
