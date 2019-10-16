class CreateMethodOfPayments < ActiveRecord::Migration[5.2]
  def change
    create_table :method_of_payments do |t|
      t.integer :mathod_of_payment, null: false


      t.timestamps
    end
  end
end
