class Post < ActiveRecord::Base
  attr_accessible :review, :title, :stars

  validates :title, :presence => true,
  					:length => {   :minimum => 4  }
  validates :review, :presence => true,
  					 :length => { :minimum => 10 }
  validates :stars, :presence => true, :numericality => { :greater_than => 0, :less_than_or_equal_to => 100}

  belongs_to :user
  belongs_to :restaurant
end
