
class Slide_writer

	def initialize (positioner)
		@positioner = positioner
	end

	def write_slide(slideshow,position)

		slides = slideshow.split("\r\n")
		slide_to_show = slides[position-1]

		height, width = @positioner.calculate_position(slide_to_show)


		height.times do |time|
			puts ""
		end

		width.times do |time|
			print " "
		end

		print slide_to_show

		height.times do |time|
			puts ""
		end
		
	end

end