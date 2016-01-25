class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :photo
      t.text :bio
      t.text :url
      t.string :twitter
      t.string :instagram
      t.string :facebook
      t.string :youtube
      t.string :vimeo
      t.string :bandcamp
      t.integer :user_id

      t.timestamps null: false
    end
  end
end