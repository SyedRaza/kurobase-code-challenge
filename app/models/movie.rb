class Movie < ActiveRecord::Base
  has_and_belongs_to_many :genres
  has_many :likes
  has_many :users,:through => :likes
end
