

class Book
	EXCEPTIONS = ["and", "but", "or", "in", "the", "of", "a", "an"]

	attr_accessor :title
	
	def title= title
		if title.length > 1
			phrase = title.split(' ')
			phrase.each do |word|
				if EXCEPTIONS.index(word) != nil && phrase.index(word) > 0
					word
				else
					word.capitalize!
				end
			end
			@title = phrase.join(' ')
		else
			@title = title.capitalize
		end
	end
end
