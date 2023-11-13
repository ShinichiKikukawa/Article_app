#app/models/article.rb

class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 1, maximum: 50 }
  validates :content, presence: true, length: { minimum: 1, maximum: 15000 }

  mount_uploader :image, ImageUploader
end
