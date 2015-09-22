class Book
attr_reader :title

  def title=(title)
		titled = ''
		title = title.sub(/\w/, &:upcase)
		title.split.each do |word| 
			unless word == 'and' || word == 'the'|| word == 'over' || word.length <= 2 && word != 'i'
				word = word.sub(/\w/, &:upcase)
			end
			titled = titled + word + ' '
		end
		@title = titled.chomp(' ')
	end
end
