class DeviseTokenAuthCreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table(:admins) do |t|
      ## User Info
      t.string :name
      t.string :nickname
      t.string :image
      t.string :email, null: false
      t.string :password_digest

      ## Tokens
      t.json :tokens

      t.timestamps
    end

    add_index :admins, :email,                unique: true
  end
end
