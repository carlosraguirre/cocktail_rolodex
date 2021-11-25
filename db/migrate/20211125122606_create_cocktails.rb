class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.string :cocktail_name
      t.string :ingredient
      t.string :direction
      t.string :recipe_link

      t.timestamps
    end
  end
end
