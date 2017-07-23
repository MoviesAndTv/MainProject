class LikeComment < ActiveRecord::Base
  belongs_to :users
  belongs_to :comments
end
