class User < ActiveRecord::Base
  attr_accessible :city, :email, :name, :password, :password_confirmation, :username


  has_secure_password

  EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, :presence => true,
  					:confirmation => true,
  					:uniqueness => true #, :length => { :minimum => 5 }
  validates_format_of :email, :with => EmailRegex

  has_many :posts

end
