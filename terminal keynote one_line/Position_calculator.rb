require 'terminfo'

class Position_calculator

	def calculate_position(slide)

		terminfo = TermInfo.screen_size
		height = terminfo[0]/2
		width = (terminfo[1] - slide.size)/2

		return height, width

	end

end
