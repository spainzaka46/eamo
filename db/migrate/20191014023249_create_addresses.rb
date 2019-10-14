class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :end_user_id
      t.string :integer
      t.string :postal_code
      t.string :string
      t.string :address
      t.string :string
      t.string :phone_number
      t.string :string
      t.string :send_name
      t.string :string

      t.timestamps
    end
  end
end
