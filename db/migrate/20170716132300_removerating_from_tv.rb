class RemoveratingFromTv < ActiveRecord::Migration
  def change
  	remove_column :tvs, :rating, :string
  end
end
