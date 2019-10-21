class ChangeColumnToAllowNull < ActiveRecord::Migration[5.2]
  def up
    change_column :products, :photo_id,:integer, null: true # null: trueを明示する必要がある
  end

  def down
    change_column :products, :photo_id,:integer, null: false
  end
end