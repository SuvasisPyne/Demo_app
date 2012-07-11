class RenameNameToUsers < ActiveRecord::Migration
  def up
   rename_column :users, :name, :user_name
  end

  def down
   rename_column :users, :user_name, :name
  end
end
