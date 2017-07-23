class RemovepgratingFromTv < ActiveRecord::Migration
  def change
  	remove_column :tvs, :pgrating, :string
  end
end
