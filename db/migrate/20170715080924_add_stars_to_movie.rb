class AddStarsToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :stars, :text,array:true, default: []
  end
end
