class Restaurant < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state

  validates :name, :presence => true,
  					:uniqueness => true
  validates :address, :presence =>true

  has_many :posts
end
