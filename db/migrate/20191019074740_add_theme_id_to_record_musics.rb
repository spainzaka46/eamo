class AddThemeIdToRecordMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :record_musics, :theme_id, :integer
  end
end
