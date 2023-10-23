class UpdateDataTypeInFavorites < ActiveRecord::Migration[6.1]
  def change
    remove_column :favorites, :cocktail_id, :string
    add_column :favorites, :cocktail_id, :integer
  end
end
