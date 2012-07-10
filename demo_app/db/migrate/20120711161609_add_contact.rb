class AddContact < ActiveRecord::Migration
  def up
   add_column :users, :contact_number, :integer
  end

  def down
   remove_column :users, :contact_number
  end
end
