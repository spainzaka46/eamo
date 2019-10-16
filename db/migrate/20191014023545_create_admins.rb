class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|

      t.string :possword, null: false


      t.timestamps
    end
  end
end
