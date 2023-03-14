class RemoveIsFavoriteToCocktails < ActiveRecord::Migration[6.1]
  def change
    remove_column :cocktails, :is_favorite, :string
  end
end
