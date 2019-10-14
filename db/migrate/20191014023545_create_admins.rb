class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :email
      t.string :string
      t.string :possword
      t.string :string

      t.timestamps
    end
  end
end
