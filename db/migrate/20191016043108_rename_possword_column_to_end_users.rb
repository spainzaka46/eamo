class RenamePosswordColumnToEndUsers < ActiveRecord::Migration[5.2]
  def change
  	rename_column :end_users, :possword, :password
  end
end
