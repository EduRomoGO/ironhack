		
		slideshow = ""

		file_contents = IO.read("Slideshow.txt")
		puts 'file_contents' + file_contents.inspect

		file_contents.each_line do |line|
			
			line_processed = line.delete "\r"
			slideshow << line_processed

		end
		puts ""
				puts ""
		puts 'slideshow' + slideshow.inspect