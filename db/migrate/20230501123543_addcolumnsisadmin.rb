class Addcolumnsisadmin < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :isadmin, :boolean, default: false
  end
end
