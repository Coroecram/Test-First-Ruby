#Add function
def add(x,y)
	x+y
end

#Subtraction function
def subtract(x,y)
	x-y
end

#Sum function
def sum(array)
	if array != []
		array.inject(:+)
	else
		return 0
	end
end

#Multiply function
def multiply(*args)
	product = 1
	args.each do |num|
		puts num
		if num.class == Fixnum || num.class == Bignum || num.class == Float
			product = product * num
		else
			puts "Please only enter numbers as arguments!"
			return
			break
		end
	end
	return product
end

#Power function
def power(x,y)
	x**y
end

#Factorial function
def factorial(x)
	if x > 1
		x * factorial(x-1)
	elsif x == 1
		return 1
	elsif x == 0
		return 0
	else
		puts "Put an integer greater than or equal to 0"
		return
	end
end