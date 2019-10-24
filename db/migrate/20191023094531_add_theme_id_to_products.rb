class AddThemeIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :theme_id, :integer
  end
end
