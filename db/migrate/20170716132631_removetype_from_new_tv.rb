class RemovetypeFromNewTv < ActiveRecord::Migration
  def change
  	remove_column :new_tvs, :type, :string
  end
end
