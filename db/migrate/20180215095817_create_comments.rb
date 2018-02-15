class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :content_id
      t.integer :user_id
      t.text :text
      t.datetime :created_at
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :comments, :content_id
    add_index :comments, :user_id
  end
end
