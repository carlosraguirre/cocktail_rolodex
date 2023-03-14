class ChangeIsFavoriteToBoolean < ActiveRecord::Migration[6.1]
  def change
    remove_column :cocktails, :is_favorite, :string
    add_column :cocktails, :is_favorite, :boolean
  end
end
