 class Room < ActiveRecord::Base

  has_many :reviews
  has_many :pictures
  belongs_to :user
  has_many :reservations
end
