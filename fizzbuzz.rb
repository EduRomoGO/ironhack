
class Fizzbuzz

	def initialize (num)
		@num = num.to_i
	end

	def calculate_fizzs_buzzs
		@num.times do |num|
			var = num+1
			if (var%3)==0 and (var%5)==0
				puts "fizz and buzz"
			elsif (var%5)==0
				puts "buzz"
			elsif (var%3)==0
				puts "fizz"
			elsif (var%3 != 0) and (var%5 != 0)
				puts var
			end
		end
	end

end

puts "Enter the maximum number to find fizzs and buzzs:"
num = gets.chomp

fb = Fizzbuzz.new (num)
fb.calculate_fizzs_buzzs