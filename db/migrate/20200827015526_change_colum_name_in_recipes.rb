class ChangeColumNameInRecipes < ActiveRecord::Migration[6.0]
  def change
    rename_column :recipes, :chefe_id, :chef_id
  end
end
