class ChangeIsFavoriteColumnNametoFavorite < ActiveRecord::Migration[6.1]
  def change
    remove_column :cocktails, :is_favorite, :boolean
    add_column :cocktails, :favorite, :string    
  end
end
