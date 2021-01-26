require_relative '../views/meals_view'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @meals_view = MealsView.new
  end

  def list
    # get all the meals from the repo
    meals = @meal_repository.all # array of instances
    # tell the view diplay the meals
    @meals_view.display(meals)
  end

  def add
    # tell the view to ask for the name
    name = @meals_view.ask_for('name')
    # tell the view to ask for the price
    price = @meals_view.ask_for('price').to_i
    # create a new meal instance
    meal = Meal.new(name: name, price: price)
    # give the meal to the repository
    @meal_repository.create(meal)
  end
end





# require_relative '../models/meal'
# require_relative '../views/view'

# class MealsController
#   def intialize(meal_repository)
#     @meal_repository = meal_repository
#     @view = View.new
#   end

#   def list
#     meals = @meal_repository.all
#     @meals_view.display_meals(meals)
#   end

#   def add
#     name = meals_view.ask_for("name")
#     price = meals_view.ask_for("price".to_i
#     new_meal = Meal.new(name: name, price: price)
#     @meal_repository.create(new_meal)

#   end
# end
