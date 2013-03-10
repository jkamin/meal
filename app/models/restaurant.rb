class Restaurant < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state

  acts_as_gmappable

	def gmaps4rails_address
	 #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
 	 "#{self.address}, #{self.city}, #{self.state}" 
	end

  validates :name, :presence => true,
  					:uniqueness => true
  validates :address, :presence => true

  validates :city, :presence => true

  validates :state, :presence => true

  has_many :posts
end
