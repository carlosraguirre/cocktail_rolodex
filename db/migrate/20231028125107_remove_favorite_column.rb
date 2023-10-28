class RemoveFavoriteColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :cocktails, :favorite, :boolean
  end
end
