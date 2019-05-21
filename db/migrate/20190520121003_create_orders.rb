class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :address
      t.integer :phone
      t.integer :code
      t.integer :subtotal
      t.string :status

      t.timestamps
    end
  end
end
