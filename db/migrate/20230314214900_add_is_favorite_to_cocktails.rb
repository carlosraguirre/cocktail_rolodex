class AddIsFavoriteToCocktails < ActiveRecord::Migration[6.1]
  def change
    add_column :cocktails, :is_favorite, :string
  end
end
