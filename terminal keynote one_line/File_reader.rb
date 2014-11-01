
class File_reader

	def initialize(file)
		@file = file
	end

	def read
		file_contents = IO.read(@file)
		slideshow = process_file(file_contents)
		return slideshow
	end

	def process_file(file_contents)

		slideshow = ""

		file_contents.each_line do |line|
			
			if !(line.include? "----")
				slideshow << line
			end
			
		end

		return slideshow

	end

end