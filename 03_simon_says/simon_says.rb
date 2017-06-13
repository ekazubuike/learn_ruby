def echo phrase
	return phrase
end

def shout phrase
	return phrase.upcase
end

def repeat (phrase, num = 2)
	return ([phrase] * num).join(' ')
end

def start_of_word (word, n)
	return word[0..n-1]
end

def first_word phrase
	return phrase.split(' ')[0]
end

LITTLE_WORDS = ["the", "over", "an", "and"]
def titleize words
	phrase = words.split(' ')
	phrase.each do |word|
		if LITTLE_WORDS.index(word) != nil && phrase.index(word) > 0
			word
		else
			word.capitalize!
		end
	end
	return phrase.join(' ')
end