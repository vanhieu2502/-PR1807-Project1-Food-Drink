class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.integer :phone
      t.string :password_digest
      t.integer :role
      t.string :avatar

      t.timestamps
    end
  end
end
