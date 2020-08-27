class ChangeColumInChefs < ActiveRecord::Migration[6.0]
  def change
    rename_column :chefs, :name, :chefname
  end
end
