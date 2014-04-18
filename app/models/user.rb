class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true, uniqueness: true
  after_create :send_welcome_message


  has_many :reservations
  has_many :rooms
  has_many :reviews, :through => :rooms
  has_many :pictures, :through => :rooms

  def send_welcome_message
    UserMailer.welcome_message(self).deliver
  end
end
