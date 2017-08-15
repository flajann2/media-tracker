class CreateMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :media do |t|
      t.string :title
      t.string :description
      t.string :metadata
      t.string :uri
      t.string :media_type
      t.references :consumable, polymorphic: true, index: true
      t.timestamps
    end
    add_index :media, :title
  end
end
