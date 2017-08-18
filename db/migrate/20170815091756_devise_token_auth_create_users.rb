class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table(:users) do |t|

      t.string :name
      t.string :nickname
      t.string :email, null: false
      t.string :password_digest

      ## Tokens
      t.json :tokens

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
