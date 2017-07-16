class TvsController < ApplicationController
@@page=10;
def ndbcreate

	# @show=@@page
	# pg=@@page.to_s
url="https://apimovies.herokuapp.com/page/"+"#{pg}"
	@response = HTTParty.get(url, query: {

 # limit: 50

  })
		# @@page=@@page+1
		@response.each do |movie|
			if(movie['ep']>0)
			@mov=Tv.new
			@mov.name=movie['title']
			# @mov.content=movie['summary']
			# @mov.rating=movie['rating']
			@mov.releasedate=movie['release']
@mov.episodes=movie['ep']
			@mov.genres=movie['genre']
			@mov.duration=movie['runtime']
			# @mov.pgrating=movie['mpa_rating']
			@mov.coverpic=movie['poster'];
			# mov.directors=
			# mov.writers=
			# mov.stars=
			@mov.save
		end
		end
	end
def ntcreate

	# @show=@@page
	# pg=@@page.to_s
url="http://api.tvmaze.com/shows"
	@response = HTTParty.get(url, query: {
page:@@page,
 

  })
	@@page=@@page+1
	@response.each do|res|
		@tv=NewTv.new
		if res['name']
@tv.name=res['name']
end
if res['genres']
@tv.genres=res['genres']
end
if res['summary']
@tv.content=res['summary'].html_safe
end
if res['language']
@tv.language=res['language']
end
if res['type']
@tv.type=res['type']
end
if res['runtime']
@tv.duration=res['runtime']
end
if res['status']
@tv.status=res['status']
end
if res['premiered']
@tv.releasedate=res['premiered']
end
if res['officialSite']
@tv.officialsite=res['officialSite']
end
if res['rating']
@tv.rating=res['rating'].first[0]
end
if res['image']
@tv.coverpic=res['image'].first[1]
end
@tv.save
end
		
		
# 			@mov=Tv.new
# 			@mov.name=movie['title']
# 			# @mov.content=movie['summary']
# 			# @mov.rating=movie['rating']
# 			@mov.releasedate=movie['release']
# @mov.episodes=movie['ep']
# 			@mov.genres=movie['genre']
# 			@mov.duration=movie['runtime']
# 			# @mov.pgrating=movie['mpa_rating']
# 			@mov.coverpic=movie['poster'];
# 			# mov.directors=
# 			# mov.writers=
# 			# mov.stars=
# 			@mov.save
# 		end
# 		end
	end
end
