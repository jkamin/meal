class Restaurant < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state, :latitude, :longitude

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  validates :name, :presence => true,
            :uniqueness => true
  validates :address, :presence => true

  validates :city, :presence => true

  validates :state, :presence => true

  has_many :posts
end
