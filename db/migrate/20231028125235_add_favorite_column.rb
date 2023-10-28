class AddFavoriteColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :cocktails, :favorite, :boolean, default: false
  end
end
