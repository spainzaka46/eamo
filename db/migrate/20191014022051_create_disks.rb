class CreateDisks < ActiveRecord::Migration[5.2]
  def change
    create_table :disks do |t|
      t.string :prouduct_id
      t.string :integer
      t.string :disk_number
      t.string :integer

      t.timestamps
    end
  end
end
