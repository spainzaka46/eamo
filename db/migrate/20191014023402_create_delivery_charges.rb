class CreateDeliveryCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_charges do |t|
      t.integer :delivery_charge, null: false


      t.timestamps
    end
  end
end
