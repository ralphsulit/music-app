class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :name

      t.text :url 
      t.text :credits

      t.boolean :available, default: false

      t.timestamps
    end
  end
end
