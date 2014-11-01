require 'terminfo'

class Position_calculator

	def calculate_position(slide)

		slide_height = slide.length
		slide_width = slide[0].size

		terminfo = TermInfo.screen_size
		screen_height = terminfo[0]
		screen_width = terminfo[1]

		height = (screen_height - slide_height) / 2
		width  = (screen_width - slide_width) / 2

		return height, width

	end

end
