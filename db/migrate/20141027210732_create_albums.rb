class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :recorder
      t.text :description
      t.integer :ranking

      t.timestamps
    end
  end
end
