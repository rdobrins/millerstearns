class Book < ActiveRecord::Base
  has_many :pages, dependent: :destroy
  
  validates :name, presence: true

  mount_uploader :avatar, AvatarUploader
end
