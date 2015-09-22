class Temperature	
		def initialize(opts = {})
			@celsius = opts[:c]
			@fahrenheit = opts[:f]
		end
		
		def in_fahrenheit
			if @fahrenheit != nil
				@fahrenheit
			else
				(@celsius*1.8)+32
			end
		end

		def ftoc
			(@fahrenheit-32)*(5.0/9)
		end
		
		def in_celsius
			if @celsius != nil
				@celsius
			else
				(@fahrenheit-32)*(5.0/9)
			end
		end
		
		def self.from_celsius(c)
			new(:c => c)
		end

	  def self.from_fahrenheit(f)
		new(:f => f)
	  end
end

	class Celsius < Temperature
		def initialize(temp)
			@celsius = temp
		end
	end
	
		class Fahrenheit< Temperature
		def initialize(temp)
			@fahrenheit = temp
		end
	end