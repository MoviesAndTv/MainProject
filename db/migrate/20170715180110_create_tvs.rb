class CreateTvs < ActiveRecord::Migration
  def change
    create_table :tvs do |t|
      t.string :name
      t.text :content
      t.string :rating
      t.string :releasedate
      t.string :genre
      t.string :duration
      t.string :pgrating
      t.string :coverpic

      t.timestamps null: false
    end
  end
end
