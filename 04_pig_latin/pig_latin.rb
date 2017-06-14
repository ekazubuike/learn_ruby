def translate word
	if word.split(' ') == 1
		if word.index(/[aeiou]/) == 0
			return word + "ay"
		elsif word[0..1] == "qu" || word[1..2] == "qu"
			fin = word[word.index("u") + 1..word.length-1]
			start = word[0..word.index("u")]
			return fin + start + "ay"
		else
			fin = word[word.index(/[aeiou]/)..word.length-1]
			start = word[0..(word.index(/[aeiou]/) - 1)]
			return fin + start + "ay"
		end
	else
		phrase = word.split(' ')
		phrase.each do |ind|
		if ind.index(/[aeiou]/) == 0
			phrase[phrase.index(ind)] = ind + "ay"
		elsif ind[0..1] == "qu" || ind[1..2] == "qu"
			fin = ind[ind.index("u") + 1..ind.length-1]
			start = ind[0..ind.index("u")]
			phrase[phrase.index(ind)] = fin + start + "ay"
		else
			fin = ind[ind.index(/[aeiou]/)..ind.length-1]
			start = ind[0..(ind.index(/[aeiou]/) - 1)]
			phrase[phrase.index(ind)] = fin + start + "ay"
		end
	end
	phrase.join(' ')
	end
end
