class AddDirectorsToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :directors, :text,array:true, default: []
  end
end
