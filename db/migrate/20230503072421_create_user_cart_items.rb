class CreateUserCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :user_cart_items do |t|
      t.references :user_devise, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
