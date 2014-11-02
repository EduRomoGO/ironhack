require 'imdb'

class Imdb_searcher

	def initialize
		#@imdb_search = Imdb::Search.new()
	end

	def search(films)

		film_titles = []
		film_ratings = []

		films.each_line do |line|
			film_results = Imdb::Search.new(line).movies

			film_title = film_results[0].title
			film_rating = film_results[0].rating

			film_titles.push(film_title)
			film_ratings.push(film_rating)
		end

		return film_titles, film_ratings
	end

end