class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    change_table :recipes do |t|
      t.string :name
      t.string :email
      t.timestamps

    end
  end
end
