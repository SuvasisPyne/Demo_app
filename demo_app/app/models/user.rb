class User < ActiveRecord::Base
  #attr_accessible :name, :email, :type, :contact_number, :first_name, :last_name, :full_name
<<<<<<< HEAD
  has_many :posts, :dependent => :destroy
  validates :user_name, :email, :presence => true 
  validates :email, :uniqueness => true
  validates :user_type, :numericality => { :only_integer => true, :less_than => 5 }
  #before_create do |u|
  # u.name=u.name.capitalize
 # end
=======
  has_many :posts
  validates :user_name, :email, :presence => true 
  validates :email, :uniqueness => true
  validates :user_type, :numericality => { :only_integer => true, :less_than => 5 }
>>>>>>> 4feec538bc6e37e052e774563c4c7a8310ac2d4b
  before_create :make_full_name
  before_save :make_full_name
  protected
  def make_full_name
<<<<<<< HEAD
   self.full_name = self.first_name+ ' ' +self.last_name if full_name.blank?
=======
    full_name = first_name + ' ' + last_name if full_name.blank?
>>>>>>> 4feec538bc6e37e052e774563c4c7a8310ac2d4b
  end
end
