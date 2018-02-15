class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.integer :user_id
      t.string :image_path
      t.text :caption
      t.datetime :created_at
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :contents, :user_id
  end
end
