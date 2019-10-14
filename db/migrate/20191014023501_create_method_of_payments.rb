class CreateMethodOfPayments < ActiveRecord::Migration[5.2]
  def change
    create_table :method_of_payments do |t|
      t.string :mathod_of_payment
      t.string :integer

      t.timestamps
    end
  end
end
