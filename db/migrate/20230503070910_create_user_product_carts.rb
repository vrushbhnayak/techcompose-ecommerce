class CreateUserProductCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_product_carts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
