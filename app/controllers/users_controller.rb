class UsersController < ApplicationController
  def index
  	movie= Movie.all
  end

  def genre


 
  	genre=params["genre"]
  	tp=params["type"]
    if(tp=='m')
  		@mov=[]
  		movie = Movie.pluck(:genres);
  		ctr=0
  		arr=[]
  		movie.each do |mo|
        mo.gsub!("\"","")
        mo.gsub!("[","")
        mo.gsub!("]","")
        mo.gsub!(" ","")
        mo=mo.split(',')
  			mo.each do |g|
  				if(g == genre)
  					arr<<ctr+1
  				end	
  		  end
  		    ctr+=1
      end    
  		
    
  			@mov=Movie.find(*arr)
  		
    end
	if(tp=='t')
  		@tv=[]
  		tvs = NewTv.pluck(:genres);
  		ctr=0
  		arr=[]
  		tvs.each do |mo|
        mo.gsub!("\"","")
        mo.gsub!("[","")
        mo.gsub!("]","")
        mo.gsub!(" ","")
        mo=mo.split(',')
  			mo.each do |g|
  				if(g == genre)
  					arr<<ctr+1
  				end	
  		    end
  		    ctr+=1
  	    end
  		arr.each do |id|
  			@tv<<NewTv.find(*arr)
  		end	
    end


    if(tp=='a')
  		@anime=[]
  		tvs = NewTv.pluck(:genres, :language);
  		ctr=0
  		arr=[]
  		tvs.each do |mo|
        mo[0].gsub!("\"","")
        mo[0].gsub!("[","")
        mo[0].gsub!("]","")
        mo[0].gsub!(" ","")
        mo[0]=mo[0].split(',')
  			if(mo[1]=="japanese")
  			  mo[0].each do |g|
  				if(g == genre)
  					arr<<ctr+1
  				end	
  		      end
  		    end
  		    ctr+=1
  	    end
  		arr.each do |id|
  			@anime<<NewTv.find(*arr)
  		end	
    end
end
end