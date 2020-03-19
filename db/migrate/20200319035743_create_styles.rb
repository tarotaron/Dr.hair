class CreateStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :styles do |t|
      t.integer :length_id, null: false
      t.integer :form_id, null: false
      t.string :style_image_id, null: false
      t.string :style_body, null: false
      t.string :style_name
      t.timestamps
    end
  end
end
