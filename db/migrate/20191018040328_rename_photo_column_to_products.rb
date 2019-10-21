class RenamePhotoColumnToProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :photo, :photo_id
  end
end
