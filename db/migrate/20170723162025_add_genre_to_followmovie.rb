class AddGenreToFollowmovie < ActiveRecord::Migration
  def change
    add_column :followmovies, :genre, :string
  end
end
