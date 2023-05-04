class Addquentycolumn < ActiveRecord::Migration[7.0]
  def change
    add_column :product_carts, :quantity, :integer, default: 0
  end
end
