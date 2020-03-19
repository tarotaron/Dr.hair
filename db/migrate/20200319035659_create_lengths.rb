class CreateLengths < ActiveRecord::Migration[5.2]
  def change
    create_table :lengths do |t|
      t.string :length_name, null: false
      t.string :length_image_id, null: false

      t.timestamps
    end
  end
end
