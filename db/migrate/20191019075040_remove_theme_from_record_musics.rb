class RemoveThemeFromRecordMusics < ActiveRecord::Migration[5.2]
  def change
    remove_column :record_musics, :theme, :string
  end
end
