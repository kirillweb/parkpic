class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments
  has_many :photos
  mount_uploader :avatar, PictureUploader

  def to_json
    ::Api::UserSerializer.new(self).to_json
  end
end
