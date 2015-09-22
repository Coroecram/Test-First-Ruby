class Timer
attr_accessor :seconds
	def initialize
		@seconds = 0
	end
	
	def time_string
		seconds = @seconds%60
		min = (@seconds%3600)/60
		hr = (@seconds/3600)
		padded(hr) + ':' + padded(min) + ':' + padded(seconds)
	end
	
	def padded(digit)
		if digit < 10
			return '0' + digit.to_s
		else
			return digit.to_s
		end
	end	
end	