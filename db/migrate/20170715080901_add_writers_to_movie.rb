class AddWritersToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :writers, :text,array:true, default: []
  end
end
