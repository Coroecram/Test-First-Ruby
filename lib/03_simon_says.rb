#Echo function
def echo(string)
	string
end

#Shout function
def shout(string)
	string.upcase
end

#Repeat function
def repeat(string, repeats=2)
	multi = repeats - 1
	repeated_string = string
	multi.times {repeated_string += (" " +string)}
	return repeated_string
end

#Start of Word Function
def start_of_word(string, num=1)
	string[0..(num-1)]
end

#First Word function
def first_word(string)
	word_array = string.split
	word_array[0]
end

#Titleize Function
def titleize(string)
	titled = ''
	#Capitalize first letter
	string = string.sub(/\w/, &:upcase)
	#Capitalize each word unless less than 2 letters or not important (will take a very long time to be exhaustive)
	string.split.each do |word| 
		unless word == 'and' || word == 'the'|| word == 'over' || word.length <= 2
			word = word.sub(/\w/, &:upcase)
		end
		titled = titled + word + ' '
	end
return titled.chomp(' ')
end
	