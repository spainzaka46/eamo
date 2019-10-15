class CreateArrivalOfGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :arrival_of_goods do |t|
      t.integer :product_id, null: false

      t.date :arrival_day, null: false

      t.integer :sheet, null: false


      t.timestamps
    end
  end
end
