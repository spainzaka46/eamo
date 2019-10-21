class RenameDaletedAtColumnToProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :daleted_at, :deleted_at
  end
end
