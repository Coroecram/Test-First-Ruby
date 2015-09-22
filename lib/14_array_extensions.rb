class Array

def sum
sum = 0
self.each do |n|
	sum = sum + n
end
return sum
end

def square
array = []
	self.each do |n|
		n = n * n
		array << n
	end
	return array
end

def square!
	self.map! do |n|
		n = n * n
	end
end

end
