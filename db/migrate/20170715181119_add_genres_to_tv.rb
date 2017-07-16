class AddGenresToTv < ActiveRecord::Migration
  def change
    add_column :tvs, :genres, :text,array:true, default: []

  end
end
