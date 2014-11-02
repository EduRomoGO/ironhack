
class Keyboard_reader

	def read_input
		film_list = ""

		while true 
			input = gets
			if input.chomp != "q"
				film_list << input
			else
				break
			end
		end
		return film_list
	end

end