class FollowmoviesController < ApplicationController
  

  def follow
  	@followed
@mid=params['movieid'].to_i
@genre=params['genre']
  	mov=Followmovie.where(users_id: current_user.id, movies_id:params['movieid'].to_i, genre:params['genre']).first
  	if mov
      mov.destroy
      @followed=false
  else
@mov=Followmovie.new
@mov.users_id=current_user.id;
@mov.movies_id=params['movieid']
@mov.genre=params['genre']
@mov.save
@followed=true
  end
  respond_to do |format|
format.js{}
end
 # return redirect_to controller: "movies",action:"index",id:params['movieid'],genre:params['genre']
end
end
