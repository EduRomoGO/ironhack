
class Slide_writer

	def initialize (positioner)
		@positioner = positioner
	end

	def write_slide(slideshow,position)

		#slideshow es un array de slides(array)
		slide_to_show = slideshow[position-1]

		#slides = slideshow.split("\r\n")
		#slide_to_show = slides[position-1]
		num_of_lines_in_slide = slide_to_show.length

		height, width = @positioner.calculate_position(slide_to_show)

		slide_to_show = slide_to_show.join('')

		height.times do |time|
			puts ""
		end

		slide_to_show.each_line do |line|

			width.times do |time|
				print " "
			end

			print line
		end

		height.times do |time|
			puts ""
		end
		
	end

end