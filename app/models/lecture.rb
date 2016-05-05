class Lecture < ActiveRecord::Base
   acts_as_votable
  belongs_to :course
  belongs_to :user
  has_many :comments
   mount_uploader :attach, FileUploader
   mount_uploader :image, ImageUploader
validates :content , :presence=>true
validates :attach , :presence=>true
end
