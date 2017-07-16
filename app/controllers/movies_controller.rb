class MoviesController < ApplicationController
	 @@page=81;
	 @@d=4051;
	def dbcreate
		 @@page=@@page+1;
	@response = HTTParty.get('https://yts.ag/api/v2/list_movies.json', query: {
 page: @@page,
 limit: 50

  })
	



			 @response['data']['movies'].each do |movie|
			 
			 	@movies=Movie.find(@@d)

	@movies.genres=movie['genres']
	@@d=@@d+1
	@movies.save
end
		# 	@mov=Movie.new
		# 	@mov.name=movie['title']
		# 	@mov.content=movie['summary']
		# 	@mov.rating=movie['rating']
		# 	@mov.releasedate=movie['year']

		# 	@mov.genres=movie['genres']
		# 	@mov.duration=movie['runtime']
		# 	@mov.pgrating=movie['mpa_rating']
		# 	@mov.coverpic=movie['medium_cover_image'];
		# 	# mov.directors=
		# 	# mov.writers=
		# 	# mov.stars=
		# 	@mov.save
		# end

	end


	
end
