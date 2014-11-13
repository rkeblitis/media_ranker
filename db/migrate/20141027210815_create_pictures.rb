class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :url
      t.text :description
      t.integer :ranking

      t.timestamps
    end
  end
end
