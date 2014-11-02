require 'imdb'
require './Imdb_searcher'
require './File_reader'
#require './Keyboard_reader'

class Graphical_movie_rating_writer

	def initialize(input_reader, imdb_searcher)
		@input_reader = input_reader
		@imdb_searcher = imdb_searcher
		#@results_drawer = Results_drawer.new
	end

	def draw_ratings

		films = @input_reader.read_input
		film_titles, film_ratings = @imdb_searcher.search(films)

		film_ratings_rounded = []
		film_ratings.each do |rating|
			film_ratings_rounded.push(rating.round)
		end


		ratings_draw = process_ratings_draw(film_ratings_rounded)
		titles_draw = process_titles(film_titles)

		puts ratings_draw
		puts titles_draw

	end

	def process_titles(film_titles)

		titles = ""
		film_titles.length.times do |time|
			film_number = time+1
			titles << film_number
			titles << ". "
			titles << film_titles[time]
			titles << "\n"
		end
		return titles
	end

	def process_ratings_draw(film_ratings_rounded)

		lines = ""

		10.times do |time|

			line = " "

			film_ratings_rounded.each do |rating|

				if rating.to_i == (10-time.to_i)
					line << "#"
				else
					line << " "
				end

			end

			line << "\n"
			lines << line
		end

		return lines

	end

end


#gmr = Graphical_movie_rating_writer.new(Keyboard_reader.new, Imdb_searcher.new)
gmr = Graphical_movie_rating_writer.new(File_reader.new("films.txt"), Imdb_searcher.new)
gmr.draw_ratings