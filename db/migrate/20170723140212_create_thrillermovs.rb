class CreateThrillermovs < ActiveRecord::Migration
  def change
    create_table :thrillermovs do |t|
      t.string :name
      t.string :content
      t.string :rating
      t.string :releasedate
      t.string :duration
      t.string :pgrating
      t.string :coverpic
      t.string :genres

      t.timestamps null: false
    end
  end
end
