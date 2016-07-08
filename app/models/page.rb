class Page < ActiveRecord::Base
  belongs_to :book

  validates :name, presence: true

  mount_uploader :avatar, AvatarUploader
end
