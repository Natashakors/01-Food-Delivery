
require_relative 'base_view'

class MealsView < BaseView
  def display(meals) # array of instances
    if meals.any?
      meals.each_with_index do |meal, index|
        puts "#{index + 1}.) #{meal.name} - ¥#{meal.price}"
      end
    else
      puts "No meals yet 🍽"
    end
  end
end




# class MealsView < BaseView
#   def display_meals(meals)
#     puts "Here are the meals"
#     meals.each_with_index do |meal, idx|
#       puts "#{idx + 1}. #{meal.id} - #{meal.name} #{meal.price}"
#     end
#   end

#   def ask_for(thing)
#     puts "Please enter the #{thing} in order to proceed:"
#     print "> "
#     gets.chomp
#   end


# end
