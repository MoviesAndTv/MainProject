class AddGenresToNewTv < ActiveRecord::Migration
  def change
    add_column :new_tvs, :genres, :text,array:true, default: []
  end
end
