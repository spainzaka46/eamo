class CreateRecordMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :record_musics do |t|
      t.string :disk_id
      t.string :integer
      t.string :track_number
      t.string :integer
      t.string :theme
      t.string :string
      t.string :song_name
      t.string :string

      t.timestamps
    end
  end
end
