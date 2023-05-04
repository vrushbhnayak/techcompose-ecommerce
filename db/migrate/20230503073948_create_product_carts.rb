class CreateProductCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :product_carts do |t|
      t.references :userdevise, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
