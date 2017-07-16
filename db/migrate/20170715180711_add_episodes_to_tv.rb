class AddEpisodesToTv < ActiveRecord::Migration
  def change
    add_column :tvs, :episodes, :string
  end
end
