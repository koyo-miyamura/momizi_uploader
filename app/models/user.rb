class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  has_many :contents
  has_many :comments
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
