class FixFavoriteSpelling < ActiveRecord::Migration[6.1]
  def change
    rename_column :cocktails, :favoriter, :favorite
  end
end
