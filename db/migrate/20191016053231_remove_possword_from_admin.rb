class RemovePosswordFromAdmin < ActiveRecord::Migration[5.2]
  def change
    remove_column :admins, :possword, :string
  end
end
