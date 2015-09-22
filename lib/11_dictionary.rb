class Dictionary
  def entries
    @dict ||= {}
  end
	
  def add(input)
  if input.class == Hash
	input.map do |k, v|
	key = k
	value = v
	entries[key] = value
	end
	else
		key = input
		value = nil
		entries[key] = value
	end
  end

  
def keywords
	@dict.keys.sort
end
	
def include?(to_find) 
    entries.keys.include?(to_find)
end

 def find(to_find)
    result = {}
    entries.each do |k, v|
      if k =~ /#{to_find}/
        result[k] = v
      end
    end
    return result
end
	
def printable
	array = []
	keywords.each do |k|
		array << "[#{k}] \"#{@dict[k]}\""
	end
	return array.join("\n")
end

end
