class User < ActiveRecord::Base
  #attr_accessible :name, :email, :type, :contact_number, :first_name, :last_name, :full_name

  has_many :posts
  validates :user_name, :email, :presence => true 
  validates :email, :uniqueness => true
  validates :user_type, :numericality => { :only_integer => true, :less_than => 5 }
  #before_create do |u|
  # u.name=u.name.capitalize
 # end

  before_create :make_full_name
  before_save :make_full_name
  protected
  def make_full_name
    self.full_name = self.first_name+ ' ' +self.last_name if full_name.blank?
  end
end
