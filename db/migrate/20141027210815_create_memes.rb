class CreateMemes < ActiveRecord::Migration
  def change
    create_table :memes do |t|
      t.string :name
      t.string :author
      t.text :description
      t.integer :ranking

      t.timestamps
    end
  end
end
