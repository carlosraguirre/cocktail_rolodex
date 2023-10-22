class RemoveFavoritesColumnFromCocktailTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :cocktails, :favorite, :string
  end
end
