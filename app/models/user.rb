class User < ActiveRecord::Base
  has_many :likes
  has_many :movies,:through => :likes
end
