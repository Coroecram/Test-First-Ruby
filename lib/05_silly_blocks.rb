def reverser
string = yield
reversed = []

 string.split.each do |word|
  reversed.push(word.reverse)
 end
 reversed.join(" ")
end

def adder(adds = 1)
 yield + adds
end

#Executes the block and repeats it n times. 

def repeater(repeats = 1)
 repeats.times {yield}
end