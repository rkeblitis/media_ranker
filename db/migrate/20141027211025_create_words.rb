class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.string :language
      t.text :definition
      t.integer :ranking

      t.timestamps
    end
  end
end
