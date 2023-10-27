class Round2SetDefaultForFavorites < ActiveRecord::Migration[6.1]
  def up
    change_column_default :cocktails, :favorite, true
  end

  def down
    change_column_default :cocktails, :favorite, nil
  end
end
