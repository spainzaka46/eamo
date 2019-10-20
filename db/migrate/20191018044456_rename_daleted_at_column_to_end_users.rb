class RenameDaletedAtColumnToEndUsers < ActiveRecord::Migration[5.2]
  def change
  	rename_column :end_users, :daleted_at, :deleted_at
  end
end
