class CreateRecordMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :record_musics do |t|
      t.integer :disk_id, null: false

      t.integer :track_number, null: false

      t.string :theme, null: false

      t.string :song_name, null: false


      t.timestamps
    end
  end
end
