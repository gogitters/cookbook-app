class CreateCategorizedRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :categorized_recipes do |t|
      t.integer :category_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
