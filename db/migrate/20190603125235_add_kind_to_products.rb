class AddKindToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :kind, :integer
  end
end
