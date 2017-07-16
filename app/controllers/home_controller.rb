class HomeController < ApplicationController
  def index

string=params['movie']
movie=""
if string
strs=string.split(" ")
strs.each do |str|
 str=str.slice(0,1).capitalize + str.slice(1..-1)
 movie=movie+str+" "
end
end
movie=movie.chop
@mov=Movie.where(name: movie)
@mov
  end
  def newdb
  @response = HTTParty.get('https://apimovies.herokuapp.com/page/0',
  ) 
  end
  def allmov
  	@mov=Movie.all.limit(30);
  end
  def alltv
  	@tv=Tv.all.limit(30);
  end
end
