class Recipe < ApplicationRecord
  def ingredients_list
    list = []
    ingredients.split(", ").each do |ingredient|
      list << ingredient.gsub(".", "")
    end
    list
  end

  def friendly_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def friendly_prep_time
    hours = prep_time / 60
    minutes = prep_time % 60
    result = ""
    result += "#{hours} hour".pluralize(hours) if hours > 0
    result += " #{minutes} minute".pluralize(minutes) if minutes > 0
    result
  end
end
