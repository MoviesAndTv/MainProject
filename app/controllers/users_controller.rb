class UsersController < ApplicationController
 before_action :authenticate_user!
  def index
  	@upcomingmovie = Movie.first(4)
    @trendingmovie = Movie.offset(4).first(4)
    @myfavs = Movie.offset(4).last(4)
  end

  def genre

# d=0;
#  movie=Fantasymov.all;
#  movie.each do |mo|
#   mo.id=d
#   d=d+1
#   mo.save

#    mo.genres.gsub!("\"","")
#         mo.genres.gsub!("[","")
#         mo.genres.gsub!("]","")
#         mo.genres.gsub!(" ","")
#         gen=mo.genres.split(',')  
# gen.each do |ger|
#   if ger=="Thriller"

# <<<<<<< HEAD
# #     actionmov=Thrillermov.new
# =======
#    mo.genres.gsub!("\"","")
#         mo.genres.gsub!("[","")
#         mo.genres.gsub!("]","")
#         mo.genres.gsub!(" ","")
#         gen=mo.genres.split(',')  
# gen.each do |ger|
#   if ger=="Crime"

#     actionmov=Crimemov.new
# >>>>>>> 304c28524830784247fe92eba2b279ce37913ced
   
#     actionmov.name=mo.name;
#     actionmov.content=mo.content;
#     actionmov.rating=mo.rating;
#     actionmov.releasedate=mo.releasedate;
#     actionmov.duration=mo.duration;
#     actionmov.pgrating=mo.pgrating;
#     actionmov.coverpic=mo.coverpic;
#   actionmov.save
  
# end
# end

@mov
  	genre=params["genre"]
  	tp=params["type"]
    if (tp=='m')
      if genre=="Action"
@mov=Actionmov.all
      end
       if genre=="Comedy"
@mov=Comedymov.all
      end
       if genre=="Thriller"
@mov=Thrillermov.all
      end
       if genre=="Romance"
@mov=Romancemov.all
      end
       if genre=="Sci-Fi"
@mov=Scifimov.all
      end
        if genre=="Drama"
@mov=Dramamov.all
      end
       if genre=="Horror"
@mov=Horrormov.all
      end
       if genre=="Fantasy"
@mov=Fantasymov.all
      end

   if genre=="Crime"
@mov=Crimemov.all
      end
    end
#     if(tp=='m')
#   		@mov=[]
#   		movie = Movie.pluck(:genres);
#   		ctr=0
#   		arr=[]
#   		movie.each do |mo|
#         mo.gsub!("\"","")
#         mo.gsub!("[","")
#         mo.gsub!("]","")
#         mo.gsub!(" ","")
#         mo=mo.split(',')
#   			mo.each do |g|
#   				if(g == genre)
#   					arr<<ctr+1
#   				end	
#   		  end
#   		    ctr+=1
#       end    
  		
    
#   			@mov=Movie.find(*arr)
  		
#     end
# 	if(tp=='t')
#   		@tv=[]
#   		tvs = NewTv.pluck(:genres);
#   		ctr=0
#   		arr=[]
#   		tvs.each do |mo|
#         mo.gsub!("\"","")
#         mo.gsub!("[","")
#         mo.gsub!("]","")
#         mo.gsub!(" ","")
#         mo=mo.split(',')
#   			mo.each do |g|
#   				if(g == genre)
#   					arr<<ctr+1
#   				end	
#   		    end
#   		    ctr+=1
#   	    end
#   		arr.each do |id|
#   			@tv<<NewTv.find(*arr)
#   		end	
#     end


#     if(tp=='a')
#   		@anime=[]
#   		tvs = NewTv.pluck(:genres, :language);
#   		ctr=0
#   		arr=[]
#   		tvs.each do |mo|
#         mo[0].gsub!("\"","")
#         mo[0].gsub!("[","")
#         mo[0].gsub!("]","")
#         mo[0].gsub!(" ","")
#         mo[0]=mo[0].split(',')
#   			if(mo[1]=="japanese")
#   			  mo[0].each do |g|
#   				if(g == genre)
#   					arr<<ctr+1
#   				end	
#   		      end
#   		    end
#   		    ctr+=1
#   	    end
#   		arr.each do |id|
#   			@anime<<NewTv.find(*arr)
#   		end	
#     end
end
end