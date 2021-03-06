class Picture < ActiveRecord::Base
  has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/system/products/images/missing.png"
  validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/

  belongs_to :room
  belongs_to :user

end
