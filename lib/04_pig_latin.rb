def translate(word)
word = word.downcase
vowels = 'aeiou'
count = 0
piglatin = ''
if word.include? " "
    word.split.each do |word_single|
        word_single.each_char do |letter| 
    		if vowels.include?(letter)
    		    if letter == 'u' && word_single[count-1] == 'q'
    		        count += 1
    		    end
    		    break
    		else
    		    count += 1
    		end
    end
        if count == 0
            piglatin = piglatin + word_single + 'ay '
        else
            piglatin = piglatin + word_single[count..-1] + word_single[0..count-1] + 'ay '
            count = 0
        end
    end
else
    word.each_char do |letter| 
    		if vowels.include?(letter) 
    		    if letter == 'u' && word[count-1] == 'q'
    		        count += 1
    		    end
    		    break
    		else
    		    count += 1
    		end
    end
        if count == 0
            piglatin = piglatin + word + 'ay'
        else
            piglatin = piglatin + word[count..-1] + word[0..count-1] + 'ay'
        end
end
return piglatin.chomp(' ')
end