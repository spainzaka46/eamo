class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :genre_id, null: false

      t.integer :label_id, null: false

      t.integer :artist_id, null: false

      t.string :title, null: false

      t.integer :sales_status, null: false

      t.integer :price, null: false

      t.text :photo ,null: false


      t.datetime :daleted_at


      t.timestamps
    end
  end
end
