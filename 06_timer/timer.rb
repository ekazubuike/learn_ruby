class Timer
	attr_accessor :time
	def initialize
		@time = 0
	end

	def seconds
		@time
	end

	def seconds= (number)
		@time = number
	end

	def time_string
		hours = (@time - (@time%3600))/3600
		@time = @time - (hours*3600)
		minutes = (@time - (@time%60))/60
		seconds = @time - (minutes*60)

		return "#{plus_zero(hours)}:#{plus_zero(minutes)}:#{plus_zero(seconds)}"	
	end

	def plus_zero int
		if int.to_s.length == 1
			int = "0" + int.to_s
		else
			int = int.to_s
		end
	end
end
