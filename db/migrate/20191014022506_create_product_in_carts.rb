class CreateProductInCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :product_in_carts do |t|
      t.string :end_user_id
      t.string :integer
      t.string :product_id
      t.string :integer
      t.string :sheet
      t.string :integr

      t.timestamps
    end
  end
end
