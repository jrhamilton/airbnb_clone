class Review < ActiveRecord::Base

  belongs_to :reservation
  belongs_to :room
  belongs_to :user, :through => :reservation
end
