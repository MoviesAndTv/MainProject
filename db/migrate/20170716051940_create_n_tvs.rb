class CreateNTvs < ActiveRecord::Migration
  def change
    create_table :n_tvs do |t|
      t.string :name
      t.text :content
      t.string :rating
      t.string :releasedate
      t.text :genres
      t.string :duration
      t.string :pgrating
      t.string :coverpic

      t.timestamps null: false
    end
  end
end
