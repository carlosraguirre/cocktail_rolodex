class RemoveUserId < ActiveRecord::Migration[6.1]
  def change
    remove_column :cocktails, :user_id, :integer
  end
end
