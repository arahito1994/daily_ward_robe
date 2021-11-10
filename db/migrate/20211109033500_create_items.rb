class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title,        null: false
      t.text :style_text,     null: false
      t.text :outer_item
      t.text :tops_item
      t.text :bottoms_item
      t.text :shoes_item
      t.text :goods_item
      t.references :user,      null: false,foreign_key: true
      t.timestamps
    end
  end
end
