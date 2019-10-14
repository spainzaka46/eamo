class CreateDeliveryCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_charges do |t|
      t.string :delivery_charge
      t.string :integer

      t.timestamps
    end
  end
end
