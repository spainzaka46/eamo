class ChangeDataPhotoIdToProducts < ActiveRecord::Migration[5.2]
  def change
  	change_column :products, :photo_id, :text
  end
end
