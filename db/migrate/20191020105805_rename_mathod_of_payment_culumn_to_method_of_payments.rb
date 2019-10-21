class RenameMathodOfPaymentCulumnToMethodOfPayments < ActiveRecord::Migration[5.2]
  def change
    rename_column :method_of_payments, :mathod_of_payment, :method_of_payment
  end
end