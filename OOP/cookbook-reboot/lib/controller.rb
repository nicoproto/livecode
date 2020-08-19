require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    # GET THE RECIPES
    recipes = @cookbook.all
    # PRINT THEM
    @view.display_all(recipes)
  end

  def create
    # ASK USER FOR NAME AND DESCRIPTION
    name = @view.ask_for("name")
    description = @view.ask_for("description")
    recipe = Recipe.new(name, description)
    # STORE IT IN COOKBOOK AND CSV
    @cookbook.add_recipe(recipe)
    list
  end

  def destroy
    list
    # ASK FOR THE RECIPE INDEX
    index = @view.ask_for("index").to_i
    # DELETE AT THE INDEX
    @cookbook.remove_recipe(index -1)
    list
  end

end
