
def wordSorting (str)

	str.gsub!(/[^0-9a-z' '']/i, '')

	tokens =str.split(" ")

	tokens.sort! do 
		|a,b| a.upcase <=> b.upcase
	end

	p tokens

end

puts "enter sentence:"
str = gets.chomp

wordSorting(str)