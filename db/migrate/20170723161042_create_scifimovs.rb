class CreateScifimovs < ActiveRecord::Migration
  def change
    create_table :scifimovs do |t|
      t.string :name
      t.string :content
      t.string :rating
      t.string :releasedate
      t.string :duration
      t.string :pgrating
      t.string :coverpic

      t.timestamps null: false
    end
  end
end
