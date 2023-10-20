class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.string :user_id
      t.string :cocktail_name_id

      t.timestamps
    end
  end
end
