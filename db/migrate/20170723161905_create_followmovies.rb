class CreateFollowmovies < ActiveRecord::Migration
  def change
    create_table :followmovies do |t|
      t.references :users, index: true, foreign_key: true
      t.references :movies, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
