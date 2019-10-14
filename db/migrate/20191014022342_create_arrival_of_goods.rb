class CreateArrivalOfGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :arrival_of_goods do |t|
      t.string :product_id
      t.string :integer
      t.string :arrival_day
      t.string :date
      t.string :sheet
      t.string :integrt

      t.timestamps
    end
  end
end
