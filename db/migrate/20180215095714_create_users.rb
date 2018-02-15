class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_conf
      t.datetime :created_at
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
