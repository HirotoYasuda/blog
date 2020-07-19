class User < ApplicationRecord
  has_one_attached :avatar
  before_create :default_image

    def default_image
      self.avatar.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'avatar-default.png')), filename: 'avatar-dafault.png', content_type: 'image/png')
    end
end
