class Addcolumns < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :product, foreign_key: true
  end
end
