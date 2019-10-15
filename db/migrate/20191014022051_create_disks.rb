class CreateDisks < ActiveRecord::Migration[5.2]
  def change
    create_table :disks do |t|
      t.integer :prouduct_id, null: false

      t.integer :disk_number, null: false


      t.timestamps
    end
  end
end
