class RemoveGenreFromTv < ActiveRecord::Migration
  def change
    remove_column :tvs, :genre, :string
  end
end
