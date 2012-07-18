class User < ActiveRecord::Base
  attr_accessible :name, :email
  validates :name, :email, :presence=>true 
  validates :email, :uniqueness=>true
  before_create do |u|
   u.name=u.name.capitalize
  end
end
