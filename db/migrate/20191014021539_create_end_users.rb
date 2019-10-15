class CreateEndUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :end_users do |t|
      t.string :kanzi_last_name, null: false

      t.string :kanzi_first_name, null: false

      t.string :kana_last_name, null: false

      t.string :kana_first_name, null: false

      t.string :possword, null: false

      t.datetime :daleted_at


      t.timestamps
    end
  end
end
