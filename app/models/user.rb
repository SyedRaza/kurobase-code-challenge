class User < ActiveRecord::Base
  validates :email, presence: true,uniqueness: true
  has_many :likes
  has_many :movies,:through => :likes
end
