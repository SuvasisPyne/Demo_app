class AddColumnsToPosts < ActiveRecord::Migration
  def change
   add_column :posts, :user_id, :integer  
   add_column :posts, :title, :string
   add_column :posts, :description, :string
  end
end
