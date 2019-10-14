class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :genre_id
      t.string :integer
      t.string :label_id
      t.string :integer
      t.string :artist_id
      t.string :integer
      t.string :title
      t.string :string
      t.string :sales_status
      t.string :integer
      t.string :price
      t.string :integer
      t.string :photo
      t.string :text

      t.timestamps
    end
  end
end
