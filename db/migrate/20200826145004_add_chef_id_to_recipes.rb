class AddChefIdToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :chefe_id, :integer
  end
end
