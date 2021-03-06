require 'test_helper'

class RecipesEditTest < ActionDispatch::IntegrationTest

  def setup
    @chef = Chef.create!(chefname: "mashrur", email: "masrur@example.com")
    @recipe = Recipe.create(name:"vegetable saute", description: "great vegetable saute, add vegetable and oil", chef: @chef)
  end

  test "reject invalid recipe update" do
    get edit_recipe_path(@recipe)
    assert_template 'recipes/edit'
    patch recipe_path(@recipe), params: {recipe: {name: " ", description: "some description"}}
    assert_template 'recipes/edit'
    assert_select 'h2.panel-title'
    assert_select 'div.panel-body'
  end

  test "successfully edit a recipe" do
    get edit_recipe_path(@recipe)
    assert_template 'recipes/edit'
    update_name = "update recipe name"
    update_description = "update recipe description"
    patch recipe_path(@recipe), params: {recipe: {name: update_name, description: update_description}}
    assert_redirected_to @recipe
    #follow_redirect!
    assert_not flash.empty?
    @recipe.reload
    assert_match update_name, @recipe.name
    assert_match update_description, @recipe.description
  end
  
end
