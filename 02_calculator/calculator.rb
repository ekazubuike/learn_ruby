def add (num1, num2)
	return num1 + num2
end

def subtract (num1, num2)
	return num1 - num2
end

def sum (array)
	total = 0
	array.each {|x| total += x}
	return total
end

def multiply (*args)
	total = 1
	args.each {|x| total *= x}
	return total
end

def power (num, power)
	total = 1
	power.times do
		total *= num
	end
	return total
end

def factorial (num)
	total = 1
	array = []
	if num == 0
		return total
	else
		while num > 0
			array.push(num)
			num -= 1
		end	
	end
	array.each {|x| total *= x}
	return total
end

