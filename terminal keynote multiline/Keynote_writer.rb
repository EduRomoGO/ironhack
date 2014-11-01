require './File_reader'
require 'terminfo'
require './Slide_writer'
require './Position_calculator'

class Keynote_writer

	def initialize(reader, slider)
		@reader = reader
		@slider = slider
	end

	def start_slideshow

		slideshow = @reader.read

		position = 1
		@slider.write_slide(slideshow,position)

		num_of_slides = slideshow.length

		while(position <= num_of_slides)

			input = gets.chomp

			if input == "n"
				position+=1
				if position<=num_of_slides
					@slider.write_slide(slideshow,position)
				else
					break
				end
			end

			if input == "p"
				position-=1
				if position>0
					@slider.write_slide(slideshow,position)
				else
					break
				end
			end

			if input == "a"
				while(position<num_of_slides)
					sleep 2
					position+=1
					@slider.write_slide(slideshow,position)
				end
				break
			end

		end

	end


end


Position_calculator = Position_calculator.new

kn = Keynote_writer.new(File_reader.new("Slideshow.txt"), Slide_writer.new(Position_calculator))
kn.start_slideshow