class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :form_name, null: false
      t.string :form_image_id, null: false
      t.text :form_body, null: false

      t.timestamps
    end
  end
end
