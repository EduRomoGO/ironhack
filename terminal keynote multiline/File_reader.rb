
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

		slideshow_slide = []
		slideshow_array = []

		file_contents.each_line do |line|
			
			if !(line.include? "----")
				line = line.delete "\r"
				slideshow_slide.push(line)
			else
				slideshow_array.push(slideshow_slide)
				slideshow_slide = []
			end

		end
		
		slideshow_array.push(slideshow_slide)
		return slideshow_array

	end

end