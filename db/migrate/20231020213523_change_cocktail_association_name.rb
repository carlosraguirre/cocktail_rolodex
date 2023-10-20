class ChangeCocktailAssociationName < ActiveRecord::Migration[6.1]
  def change
    rename_column :favorites, :cocktail_name_id, :cocktail_id
  end
end
