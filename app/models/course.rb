class Course < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :lectures
  validates :title , :presence=>true
  validates :title , :uniqueness=>true
  validates :content , :presence=>true
end
