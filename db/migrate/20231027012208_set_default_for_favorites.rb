class SetDefaultForFavorites < ActiveRecord::Migration[6.1]
  def change
    change_column_default :cocktails, :favorite, 'false'
  end
end
