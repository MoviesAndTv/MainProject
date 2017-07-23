class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         def canfollow mid,genre

         	return Followmovie.where(users_id: id ,movies_id: mid, genre:genre).length>0

         end
end
