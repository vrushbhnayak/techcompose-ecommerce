class Addforeignkey < ActiveRecord::Migration[7.0]
  def change
    add_reference :carts, :user, foreign_key: true
    add_reference :carts, :product, foreign_key: true
  end
end
