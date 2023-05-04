class Addcolumnindevise < ActiveRecord::Migration[7.0]
  def change
    add_column :userdevises, :isadmin, :boolean, default: false
  end
end
