class CreateEndUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :end_users do |t|
      t.string :kanzi_last_name
      t.string :string
      t.string :kanzi_first_name
      t.string :string
      t.string :kana_last_name
      t.string :string
      t.string :kana_first_name
      t.string :string
      t.string :email
      t.string :string
      t.string :possword
      t.string :string

      t.timestamps
    end
  end
end
