class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
        t.string :name
        t.text :bio

        t.text :permalink
        t.text :avatar_url
        t.text :cover_photo_url

        t.boolean :verified 
        t.datetime :verified_at

        t.datetime :formed_at

      t.timestamps
    end
  end
end
