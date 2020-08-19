require_relative 'app/repositories/meal_repository'
require_relative 'app/controllers/meals_controller'
require_relative 'router'


MEALS_CSV_FILE = File.join(__dir__, "data/meals.csv")

meals_repo = MealRepository.new(MEALS_CSV_FILE)
meals_controller = MealsController.new(meals_repo)

router = Router.new(meals_controller)
router.run
