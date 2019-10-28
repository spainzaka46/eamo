class AddDeletedAtToDisks < ActiveRecord::Migration[5.2]
  def change
    add_column :disks, :deleted_at, :datetime
  end
end
