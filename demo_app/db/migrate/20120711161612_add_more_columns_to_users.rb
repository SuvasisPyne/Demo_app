class AddMoreColumnsToUsers < ActiveRecord::Migration
  def change
   add_column :users, :type, :integer  
   add_column :users, :first_name, :string
   add_column :users, :last_name, :string
   add_column :users, :full_name, :string
   User.all.each do |usr|
      usr.update_attributes!(:type => 2)
   end
  end
end
