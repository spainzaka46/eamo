class AddDeletedAtToRecordMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :record_musics, :deleted_at, :datetime
  end
end
