class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :kind
      t.text :cover_art_url 
      
      t.boolean :released
      t.datetime :released_at

      t.time :length

      t.timestamps
    end
  end
end
