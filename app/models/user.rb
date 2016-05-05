class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
       enum gender: { male:0, female:1}
        mount_uploader :image, ImageUploader
        
  acts_as_voter
  has_many :lectures
  has_many :courses
validates :name , :presence=>true
  validates :email , :presence=>true
 def instractor?
    self.role == 'instractor'
  end

  def user?
    self.role == 'user'
  end
end


