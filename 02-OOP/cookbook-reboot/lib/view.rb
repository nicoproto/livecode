class View
  def display_all(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name}: #{recipe.description}"
    end
  end

  def ask_for(stuff)
    puts "GIve me the #{stuff}, now: (please)"
    gets.chomp
  end

end
