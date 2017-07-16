class UsersController < ApplicationController
  def index
  	@upcomingmovie = Movie.first(4)
    @trendingmovie = Movie.offset(4).first(4)
    @myfavs = Movie.offset(4).last(4)
  end

  def genre
  	genre=params["genre"]
  	type=params["type"]
  	
    if(type=='m')
  		@mov=[]
  		movie = Movie.pluck(:genres);
  		ctr=0
  		arr=[]
  		movie.each do |mo|
  			mo.each do |g|
  				if(g == genre)
  					arr<<ctr
  				end	
  		  end
  		    ctr+=1
  	 end
  		
      arr.each do |id|
  			@mov<<Movie.where(id: id)
  		end	
    end
	if(type=='t')
  		@tv=[]
  		tvs = NewTv.pluck(:genres);
  		ctr=0
  		arr=[]
  		tvs.each do |mo|
  			mo.each do |g|
  				if(g == genre)
  					arr<<ctr
  				end	
  		    end
  		    ctr+=1
  	    end
  		arr.each do |id|
  			@tv<<NewTv.where(id: id)
  		end	
    end
    if(type=='a')
  		@anime=[]
  		tvs = NewTv.pluck(:genres, :language);
  		ctr=0
  		arr=[]
  		tvs.each do |mo|
  			if(mo[1]=="japanese")
  			  mo.each do |g|
  				if(g == genre)
  					arr<<ctr
  				end	
  		      end
  		    end
  		    ctr+=1
  	    end
  		arr.each do |id|
  			@anime<<NewTv.where(id: id)
  		end	
    end
end
end
