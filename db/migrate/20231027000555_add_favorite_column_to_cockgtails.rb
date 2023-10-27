class AddFavoriteColumnToCockgtails < ActiveRecord::Migration[6.1]
  def change
    add_column :cocktails, :favoriter, :boolean
  end
end
