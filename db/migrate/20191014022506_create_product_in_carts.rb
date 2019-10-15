class CreateProductInCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :product_in_carts do |t|
      t.integer :end_user_id, null: false

      t.integer :product_id, null: false
 
      t.integer :sheet, null: false


      t.timestamps
    end
  end
end
