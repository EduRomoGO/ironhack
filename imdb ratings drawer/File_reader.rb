
class File_reader

	def initialize file
		@file = file
	end

	def read_input
		file_contents = IO.read(@file)
	end

end

