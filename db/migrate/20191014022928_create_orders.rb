class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :end_user_id, null: false

      t.integer :method_of_payment, null: false

      t.string :postal_code, null: false

      t.string :address, null: false

      t.string :phone_number, null: false

      t.string :send_name, null: false

      t.integer :delivery_charge, null: false

      t.integer :order_status, null: false


      t.timestamps
    end
  end
end
