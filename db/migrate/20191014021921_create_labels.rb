class CreateLabels < ActiveRecord::Migration[5.2]
  def change
    create_table :labels do |t|
      t.string :label_name
      t.string :string

      t.timestamps
    end
  end
end
