class MoviesController < ApplicationController

def index

	@mov
id=params["id"];
genre=params["genre"];
if genre=="Action"
@mov=Actionmov.find(id)
@movgenre="Action"
      end
       if genre=="Comedy"
@mov=Comedymov.find(id)
@movgenre="Comedy"
      end
       if genre=="Thriller"
@mov=Thrillermov.find(id)
@movgenre="Thriller"
      end
       if genre=="Romance"
@mov=Romancemov.find(id)
@movgenre="Romance"
      end
       if genre=="Sci-Fi"
@mov=Scifimov.find(id)
@movgenre="Sci-Fi"
      end
        if genre=="Drama"
@mov=Dramamov.find(id)
@movgenre="Drama"
      end
       if genre=="Horror"
@mov=Horrormov.find(id)
@movgenre="Horror"
      end
       if genre=="Fantasy"
@mov=Fantasymov.find(id)
@movgenre="Fantasy"
      end

   if genre=="Crime"
@mov=Crimemov.find(id)
@movgenre="Crime"
      end

end	
	
end
