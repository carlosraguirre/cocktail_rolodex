class AddIsFavoriteToFavorites < ActiveRecord::Migration[6.1]
  def change
    add_column :favorites, :is_favorite, :string
  end
end
