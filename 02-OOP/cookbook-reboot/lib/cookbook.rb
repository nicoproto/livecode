require_relative 'recipe'
require 'csv'

class Cookbook
  attr_reader :recipes
  def initialize(file_path)
    @recipes = [] # <--- <Recipe> instances
    @file_path = file_path
    load_csv
  end

  def add_recipe(recipe)
    @recipes << recipe
    save_csv
  end

  def remove_recipe(index)
    @recipes.delete_at(index)
    save_csv
  end

  def all
    @recipes
  end

  private

  def load_csv
    CSV.foreach(@file_path) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def save_csv
    CSV.open(@file_path, 'wb') do |row|
      @recipes.each do |recipe|
        row << [recipe.name, recipe.description]
      end
    end
  end
end
