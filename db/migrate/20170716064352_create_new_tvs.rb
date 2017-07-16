class CreateNewTvs < ActiveRecord::Migration
  def change
    create_table :new_tvs do |t|
      t.string :name
      t.text :content
      t.string :rating
      t.string :releasedate
      t.string :duration
      t.string :pgrating
      t.string :coverpic
      t.string :status
      t.string :officialsite
      t.string :language
      t.string :type

      t.timestamps null: false
    end
  end
end
