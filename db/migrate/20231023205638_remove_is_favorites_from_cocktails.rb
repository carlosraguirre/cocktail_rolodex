class RemoveIsFavoritesFromCocktails < ActiveRecord::Migration[6.1]
  def change
    remove_column :favorites, :is_favorite, :string
  end
end
