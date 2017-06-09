def ftoc temp
	cel_temp = (temp - 32) * (5.0/9)
	return cel_temp
end

def ctof temp
	fah_temp = (temp * (9.0/5)) + 32
	return fah_temp
end