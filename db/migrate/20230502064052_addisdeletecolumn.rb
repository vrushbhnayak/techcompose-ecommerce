class Addisdeletecolumn < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :isdeleted, :boolean, default: false
  end
end
