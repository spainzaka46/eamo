class AddDeletedAtToArrivalOfGoods < ActiveRecord::Migration[5.2]
  def change
    add_column :arrival_of_goods, :deleted_at, :datetime
  end
end
