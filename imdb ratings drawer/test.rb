
=begin
film_titles = ["a", "b", "c"]

film_titles.each do |title|
	puts title
	print title
	print ". "
	#puts film_titles[title]
end
=end



=begin

ratings = [8,7,5,8,6,9,2]

10.times do |time|

	line = (10-time.to_i).to_s
	line << " "

	ratings.each do |rating|

		if rating.to_i == (10-time.to_i)
			
			if (10-time.to_i) != 10
				line << " "
			end	

			line << "#"
		else
			line << " "
		end

	end

	puts line

end

=end







=begin

Sería para poner todos los #, pero no quiero invertir mas tiempo en esto

ratings = [8,7,5,8,6,9,2]

rows = []

	ratings.each do |rating|
		col = []
		while rating < 10
			col.push(" ")
			rating+=1
		end
		rating.times do
			col.push("#")
		end
		rows.push(col)
	end


line_string = ""
line_array = []

rows.each do |row|
	rows[row]
	rows[row].each do |column|
		line_string <<	rows[row][column]
	end
	line_array.push(line_string)
end

puts line_array
=end