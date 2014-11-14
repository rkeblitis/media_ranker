class AddUploaderToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :uploader, :string
  end
end
