class Content < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :image, presence: true
  validates :caption   , presence: true
  mount_uploader :image, ImageUploader 
end
