class AddTagToCocktails < ActiveRecord::Migration[6.1]
  def change
    add_column :cocktails, :tag, :string
  end
end
